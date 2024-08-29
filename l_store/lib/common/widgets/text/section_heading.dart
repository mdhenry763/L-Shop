import 'package:flutter/material.dart';

class TSectionHeading extends StatelessWidget {
  const TSectionHeading({
    super.key, this.textColor, this.showActionsButton = true, required this.title, this.buttonTitle = 'View All', this.onPressed,
  });

  final Color? textColor;
  final bool showActionsButton;
  final String title, buttonTitle;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title, style: Theme.of(context).textTheme.headlineSmall!.apply(color: textColor), maxLines: 1, overflow: TextOverflow.ellipsis,),
        if(showActionsButton) TextButton(onPressed: onPressed, child: Text(buttonTitle)),
        
      ],
    );
  }
}