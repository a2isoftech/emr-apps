const kUserInfoA11User = {
  'data': {
    'userInfo': {
      'azureUserId': '5cb6c2d8-2955-432d-9143-72da74530a05',
      'name': 'A11 User',
      'emailAddress': 'test.user@emrgroup.com',
      'defaultTerritory': 'A11',
      'defaultDepot': 'DAUSITX',
      'territories': [
        {
          'territoryCode': 'A11',
          'name': 'UK',
          'depots': [
            {
              'depotNo': 'DSALFER',
              'shortName': 'Salford Fer',
              'gradeType': 'FERROUS',
              '__typename': 'UserDepot',
            },
            {
              'depotNo': 'DSALNFE',
              'shortName': 'Salford NFe',
              'gradeType': 'NONFER',
              '__typename': 'UserDepot',
            },
          ],
          'userOrderBooks': [
            {
              'orderBookTypeId': 1,
              'orderBookName': 'xyz',
              'gradeType': 'FERROUS',
            }
          ],
          '__typename': 'UserTerritory',
        }
      ],
      'permissions': [
        'viewContracts',
        'createContracts',
        'modifyContracts',
        'closeContracts',
        'viewDepotPosition',
      ],
      'yards': [
        {
          'name': 'Salford',
          'shortName': 'Salford',
          'yardCode': 'YSAL',
          '__typename': 'UserYard',
        }
      ],
      '__typename': 'UserInfo',
    },
    '__typename': 'Query',
  },
};
