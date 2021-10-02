import 'package:day2_animation/src/Screen/Home/Widget/escape_timer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class TickerHooked extends HookWidget {
  const TickerHooked({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _escape = useState<Duration>(Duration.zero);
    final ticker = useSingleTickerProvider();

    useEffect(
      () {
        ticker.createTicker((elapsed) {
          _escape.value = elapsed;
        }).start();
      },
      [],
    );

    return EscapeTimer(escaped: _escape.value);
  }
}
