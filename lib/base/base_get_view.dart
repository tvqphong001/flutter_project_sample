export 'package:flutter/material.dart';
export 'package:get/get.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/services/storage.service.dart';

export '../utils/services/storage.service.dart';


abstract class BaseGetView<T> extends GetView<T> {
  const BaseGetView({Key? key}) : super(key: key);
}

abstract class BaseGetWidget<T extends GetLifeCycleBase?> extends GetWidget<T> {
  const BaseGetWidget({Key? key}) : super(key: key);
}

abstract class BaseStateFull extends StatefulWidget {
  const BaseStateFull({Key? key}) : super(key: key);

  @override
  StatefulElement createElement() => StatefulElement(this);
}

void unFocus() {
  FocusScopeNode currentFocus = FocusScope.of(Get.context!);

  if (!currentFocus.hasPrimaryFocus && currentFocus.focusedChild != null) {
    FocusManager.instance.primaryFocus?.unfocus();
  }
}

StorageService get storage => Get.find<StorageService>();
