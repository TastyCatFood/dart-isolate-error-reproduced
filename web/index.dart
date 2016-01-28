// Copyright (c) 2016, <your name>. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.
library my_project.web.index;

import 'package:isolate_error/main_app.dart';
import 'package:polymer/polymer.dart';
import 'dart:isolate';

/// [MainApp] used!
main() async {
  await initPolymer();
  var rp = new ReceivePort();
  Isolate.spawnUri(
      Uri.parse('isolated.dart'),
      [],rp.sendPort);
}
