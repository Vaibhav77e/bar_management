/**
 * Scaffold(
      body: Row(
        children: <Widget>[
          NavigationRail(
            selectedIndex: _selectedIndex,
            onDestinationSelected: (int index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            labelType: NavigationRailLabelType.all,
            destinations: [
              NavigationRailDestination(
                icon: SizedBox(
                  height:  mediaQueryHelper.getHeightPercentage(3),
                  child: Image.asset('assets/images/dashboard.png')),
                  label: Text('Dashboard'),
              ),
              NavigationRailDestination(
                icon: SizedBox(
                  height:  mediaQueryHelper.getHeightPercentage(3),
                  child: Image.asset('assets/images/inventory-management.png')),
                  label: Text('Inventory'),
              ),
              NavigationRailDestination(
                icon: SizedBox(
                  height:  mediaQueryHelper.getHeightPercentage(3),
                  child: Image.asset('assets/images/order.png')),
                  label: Text('Order'),
              ),
              NavigationRailDestination(
                icon: SizedBox(
                  height:  mediaQueryHelper.getHeightPercentage(3),
                  child: Image.asset('assets/images/payment-method.png')),
                  label: Text('Payment'),
              ),
              NavigationRailDestination(
                icon: SizedBox(
                  height:  mediaQueryHelper.getHeightPercentage(3),
                  child: Image.asset('assets/images/staff.png')),
                  label: Text('Staffs'),
              ),
              NavigationRailDestination(
                icon: SizedBox(
                  height:  mediaQueryHelper.getHeightPercentage(3),
                  child: Image.asset('assets/images/report.png')),
                  label: Text('Report'),
              )
            ],
          ),
          VerticalDivider(thickness: 1, width: 1),
          Expanded(
            child: _pages[_selectedIndex],
          ),
        ],
      ),
    )
 */