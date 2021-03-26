enum DataInfo { EmptySuccess, TrueSuccess, ExceptionError, ServerError }

class ServerResponse<T> {
  String message;
  T payload;
  DataInfo extraInfo;
  ServerResponse({
    this.message,
    this.extraInfo,
    this.payload,
  });

  bool get isSuccess {
    return extraInfo == DataInfo.EmptySuccess ||
        extraInfo == DataInfo.TrueSuccess;
  }

  bool get isEmpty {
    return extraInfo == DataInfo.EmptySuccess;
  }

  bool get isTrueSuccess {
    return extraInfo == DataInfo.TrueSuccess;
  }

  

  static String get successMessage {
    return 'Data Fetched Successfully';
  }

  static String get emptyMessage {
    return 'No Entries Present';
  }

  static String get serverErrorMessage {
    return 'Unable to get data (Server Error)';
  }

  static String get exceptionMessage {
    return 'Unable to fetch data:\nCheck Internet Connection';
  }
}
