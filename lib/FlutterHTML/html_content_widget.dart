import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';

class HTMLContentWidget extends StatelessWidget {
  const HTMLContentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HtmlWidget(
        """
        <div>
          <h1>Welcome to Flutter HTML Rendering</h1>
          <p>This is a <strong>bold</strong> and blue paragraph.</p>
          <a href="https://docs.flutter.dev/get-started/install">Visit Example</a>
          <p class="p1">This paragraph is red.</p>
          <ul>
            <li>
              <b>Item 1</b>
            </li>
            <li>
              <b>Item 2</b>
            </li>
          </ul>
        </div>
       """,
        customStylesBuilder: (element) {
          if (element.classes.contains('p1')) {
            return {'color': 'red'};
          }
          return null;
        },
      ),
    );
  }
}
