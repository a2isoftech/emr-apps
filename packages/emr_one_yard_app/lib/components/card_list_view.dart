import 'package:emr_core_api/graphql/queries/yard_app/yard_app.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_yard_app/components/load_out/load_out_card.dart';
import 'package:emr_one_yard_app/components/ticket/ticket_card.dart';
import 'package:flutter/material.dart';
import 'package:signals/signals_flutter.dart';

class CardListView<T> extends StatefulWidget {
  const CardListView({
    required this.items,
    required this.pageCount,
    this.onSelect,
    this.customCardBuilder,
    super.key,
  });

  final Signal<AsyncState<List<T>>> items;
  final Signal<int> pageCount;
  final void Function(T? item)? onSelect;
  final Widget Function(T item)? customCardBuilder;

  @override
  State<StatefulWidget> createState() {
    return _CardListViewState<T>();
  }
}

class _CardListViewState<T> extends State<CardListView<T>> {
  final ScrollController _scrollController = ScrollController();
  final selectedItem = signal<T?>(null);

  @override
  void initState() {
    _scrollController.addListener(_loadMore);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Watch((context) {
      final state = widget.items.value;

      if (state is AsyncLoading) {
        return const Center(child: CircularProgressIndicator());
      }
      if (state is AsyncData) {
        final items = widget.items.value.value ?? [];

        if (items.isEmpty) {
          return Center(
            child: Text(context.l10n.noRecordsMessage),
          );
        }
        return ListView.builder(
          physics: const AlwaysScrollableScrollPhysics(),
          padding: const EdgeInsets.symmetric(
            horizontal: Insets.gutter,
          ),
          controller: _scrollController,
          itemCount: items.length,
          itemBuilder: (BuildContext context, int index) {
            final item = items[index];
            return GestureDetector(
              onTap: () {
                selectedItem.value = selectedItem.value == null ||
                        (selectedItem.value != null &&
                            selectedItem.value != item)
                    ? item
                    : null;

                widget.onSelect?.call(selectedItem.value);
              },
              child: _getCard(
                item,
              ),
            );
          },
        );
      }
      return const Center(child: Text('Error loading card source'));
    });
  }

  Widget _getCard(T item) {
    if (widget.customCardBuilder != null) {
      return widget.customCardBuilder!(item);
    }
    return switch (item.runtimeType) {
      const (Query$SearchTickets$searchTickets$nodes) => TicketCard(
          ticket: item as Query$SearchTickets$searchTickets$nodes,
        ),
      const (Query$SearchLoadOuts$loadOuts$nodes) => LoadOutCard(
          loadOut: item as Query$SearchLoadOuts$loadOuts$nodes,
        ),
      _ => throw Exception('Unsupported card type')
    };
  }

  void _loadMore() {
    if (_scrollController.position.pixels ==
        _scrollController.position.maxScrollExtent) {
      widget.pageCount.value++;
    }
  }
}
