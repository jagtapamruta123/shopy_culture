import 'package:flutter/material.dart';
import 'package:shopy_culture_flutter/widgets/text_form_field.dart';
import 'package:shopy_culture_flutter/widgets/text_widget.dart';

class OutLineButtonWidget extends StatelessWidget {
  Function onPressFlatButton;
  final String buttonTitle;
  final Color color;
  final double minWidth;
  OutLineButtonWidget({
    @required this.onPressFlatButton,
    @required this.buttonTitle,
    this.color,
    this.minWidth,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomElevation(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        // ignore: deprecated_member_use
        child: OutlineButton(
          color: Colors.red,
          autofocus: true,

          //highlightElevation: 10,
          // color,
          splashColor: Colors.red,
          borderSide: BorderSide(
            color: Colors.red,
            width: 1,
          ),
          // visualDensity: VisualDensity.,
          shape: new RoundedRectangleBorder(
            //  borderRadius: new BorderRadius.circular(30.0),
            side: BorderSide.none,
          ),
          onPressed: onPressFlatButton,
          child: CustomTextWidget(
            title: buttonTitle,
            fontSize: 18,
            color: Colors.redAccent,
          ),
        ),
      ),
    );
  }
}

class CustomElevation extends StatelessWidget {
  final Widget child;

  CustomElevation({@required this.child}) : assert(child != null);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 150,
      decoration: BoxDecoration(
        //  borderRadius: BorderRadius.circular(30),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.redAccent.withOpacity(0.2),
            // blurRadius: 1,
            offset: Offset(0, 1),
          ),
        ],
      ),
      child: this.child,
    );
  }
}

///forgot password buttion widget
class OutLinedButtonWidget extends StatelessWidget {
  String title;
  Function onPressed;
  BorderSide side;

  OutLinedButtonWidget({
    Key key,
    @required this.onPressed,
    @required this.title,
    this.side,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        child: CustomTextWidget(
          title: title,
          color: Colors.redAccent,
          fontSize: 17,
        ),
        style: OutlinedButton.styleFrom(
          primary: Colors.white,
          side: side,
          shape: RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(30.0),
            side: BorderSide.none,
          ),

          // backgroundColor: Colors.red[300],
          shadowColor: Colors.transparent,
          elevation: 10,
        ),
        onPressed: onPressed);
  }
}

//Flat Button for navigation
class NavigationButtonWidget extends StatelessWidget {
  final String title;
  final Function onTap;
  final Function onTapSubTotal;
  String subTotal;
  // final Color color;

  NavigationButtonWidget({
    @required this.title,
    @required this.onTap,
    this.subTotal = '',
    this.onTapSubTotal,
    // this.color,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 104,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Row(
          //   children: [
          //     TextFormField(
          //       decoration: InputDecoration(
          //         filled: true,
          //         isDense: true,
          //         labelText: 'enter coupon code',
          //         // contentPadding: EdgeInsets.fromLTRB(0, 6, 10, 0),
          //         border: OutlineInputBorder(),
          //         hintText: 'COUPON CODE',
          //       ),
          //     ),
          //     Spacer(),FlatButton(onPressed: null, child: Text('APPLY COUPON'),),
          //   ],
          // ),
          InkWell(
            onTap: onTapSubTotal,
            child: Container(
              height: 48,
              decoration: BoxDecoration(
                color: Colors.blue[100],
              ),
              child: Center(
                child: Text(
                  subTotal,
                ),
              ),
              width: double.infinity,
            ),
          ),
          InkWell(
            onTap: onTap,
            child: Container(
              height: 55,
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Center(
                child: Text(
                  title,
                ),
              ),
              width: double.infinity,
            ),
          ),
        ],
      ),
    );
  }
}

class BottomNavigationButtonWidget extends StatelessWidget {
  final String title;
  final Function onTap;

  // final Color color;

  BottomNavigationButtonWidget({
    @required this.title,
    @required this.onTap,

    // this.color,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 65,
        decoration: BoxDecoration(
          color: Colors.blue,
        ),
        child: Center(
          child: Text(
            title,
          ),
        ),
        width: double.infinity,
      ),
    );
  }
}

class NavigationButtonWidgetWithCoupon extends StatelessWidget {
  final String title;
  final Function onTap;
  final Function onTapSubTotal;
  String subTotal;
  String coupon;

  // final Color color;

  NavigationButtonWidgetWithCoupon({
    @required this.title,
    @required this.onTap,
    this.subTotal = '',
    this.onTapSubTotal,
    this.coupon,
    // this.color,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              CustomTextFormFieldWidget(
                hintText: 'Coupon Code',
              ),
              FlatButton(
                  onPressed: () {},
                  child: CustomTextWidget(
                    title: 'APPLY COUPON',
                  ))
            ],
          ),
          InkWell(
            onTap: onTapSubTotal,
            child: Container(
              height: 65,
              decoration: BoxDecoration(
                color: Colors.blue[100],
              ),
              child: Center(
                child: Text(
                  subTotal,
                ),
              ),
              width: double.infinity,
            ),
          ),
          InkWell(
            onTap: onTap,
            child: Container(
              height: 65,
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Center(
                child: Text(
                  title,
                ),
              ),
              width: double.infinity,
            ),
          ),
        ],
      ),
    );
  }
}

class NavigationButtonWidgetApplyCuopon extends StatelessWidget {
  final String title;
  final Function onTap;
  final Function onTapSubTotal;
  String subTotal;
  // final Color color;

  NavigationButtonWidgetApplyCuopon({
    @required this.title,
    @required this.onTap,
    this.subTotal = '',
    this.onTapSubTotal,
    // this.color,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
            child: Row(
              children: [
                Container(
                  width: 250,
                  child: TextFormField(
                    decoration: InputDecoration(
                      filled: true,
                      isDense: true,
                      labelText: 'enter coupon code',
                      // contentPadding: EdgeInsets.fromLTRB(0, 6, 10, 0),
                      border: OutlineInputBorder(),
                      hintText: 'COUPON CODE',
                    ),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                FlatButton(
                  minWidth: 145,
                  // minWidth: double.infinity,
                  height: 50,
                  onPressed: () {},
                  color: Colors.green[300],
                  splashColor: Colors.green,
                  child: Text('APPLY COUPON'),
                )
              ],
            ),
          ),
          InkWell(
            onTap: onTapSubTotal,
            child: Container(
              height: 48,
              decoration: BoxDecoration(
                color: Colors.blue[100],
              ),
              child: Center(
                child: Text(
                  subTotal,
                ),
              ),
              width: double.infinity,
            ),
          ),
          InkWell(
            onTap: onTap,
            child: Container(
              height: 55,
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Center(
                child: Text(
                  title,
                ),
              ),
              width: double.infinity,
            ),
          ),
        ],
      ),
    );
  }
}
