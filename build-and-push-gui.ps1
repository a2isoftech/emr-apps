<#
.SYNOPSIS
  Builds the emr_one_shell_web (dev environment) release web bundle and packages it into the
  nginx image defined by ./dockerfile, then pushes it to GitHub Container Registry - for use
  with iot-door-access's docker-compose.yml / docker-compose.registry.yml `gui` service.

.DESCRIPTION
  ./dockerfile expects a pre-built folder (COMPILED_LOCATION build-arg) to COPY in - it does not
  run `flutter build` itself, so this script does that step first:
    1. flutter pub get (workspace root, so melos-managed deps are current)
    2. flutter build web --release -t lib/main_dev.dart (packages/emr_one_shell_web)
    3. docker build -f dockerfile --build-arg COMPILED_LOCATION=... (repo root)
    4. docker push (if -Push)

  Mirrors the shape of iot-door-access/build-and-push-api.ps1.

.PARAMETER Tag
  Image tag to build and push. Defaults to "latest".

.PARAMETER Registry
  Registry + namespace prefix. Defaults to ghcr.io/a2isoftech.

.PARAMETER Push
  If set, pushes the image after building. Omit to just build and tag locally.

.PARAMETER SkipFlutterBuild
  Skip the flutter pub get / build web step and reuse whatever is already in
  packages/emr_one_shell_web/build/web.

.EXAMPLE
  docker login ghcr.io -u <github-username> -p <github-pat>   # needs write:packages scope
  ./build-and-push-gui.ps1 -Tag v1.0.0 -Push
#>
param(
    [string]$Tag = "latest",
    [string]$Registry = "ghcr.io/a2isoftech",
    [switch]$Push,
    [switch]$SkipFlutterBuild
)

$ErrorActionPreference = "Stop"

$image = "$Registry/emr-one-shell-web:$Tag"
$compiledLocation = "packages/emr_one_shell_web/build/web"

if (-not $SkipFlutterBuild) {
    Write-Host "flutter pub get ..."
    flutter pub get
    if ($LASTEXITCODE -ne 0) { throw "flutter pub get failed" }

    Push-Location "$PSScriptRoot/packages/emr_one_shell_web"
    try {
        Write-Host "flutter build web --release -t lib/main_dev.dart ..."
        flutter build web --release -t lib/main_dev.dart
        if ($LASTEXITCODE -ne 0) { throw "flutter build web failed" }
    }
    finally {
        Pop-Location
    }
}

if (-not (Test-Path "$PSScriptRoot/$compiledLocation/index.html")) {
    throw "$compiledLocation/index.html not found - run without -SkipFlutterBuild, or build it manually first"
}

Write-Host "Building $image ..."
docker build -f "$PSScriptRoot/dockerfile" --build-arg COMPILED_LOCATION=$compiledLocation -t $image "$PSScriptRoot"
if ($LASTEXITCODE -ne 0) { throw "docker build failed" }

if ($Push) {
    Write-Host "Pushing $image ..."
    docker push $image
    if ($LASTEXITCODE -ne 0) { throw "docker push failed" }
}
else {
    Write-Host "Built $image (local only - pass -Push to publish it to $Registry)."
}
