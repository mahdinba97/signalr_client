import 'package:azure_signalr/signalr_client.dart';
import 'package:logging/logging.dart';

import '../../views/pages/testsPageViewModel.dart';
import '../test.dart';

class ClientMethodNoParametersSimpleReturnValue extends Test {
  // Properties

  // Methods
  ClientMethodNoParametersSimpleReturnValue(
      HubConnectionProvider hubConnectionProvider, Logger logger)
      : super(hubConnectionProvider, logger,
            "Client Invokes method: 'MethodNoParametersSimpleReturnValue");

  @override
  Future<void> executeTest(HubConnection hubConnection) async {
    final result =
        await hubConnection.invoke("MethodNoParametersSimpleReturnValue");
    logger.info("Result: '$result");
  }
}
