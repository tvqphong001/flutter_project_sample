extension DynamicExtension on dynamic{
  bool get isSuccess => this == null ? false : (this.error == 0);

  bool get isLast {
    try{
      return this.next_page_url == null;
    } catch(e){
      return true;
    }
  }

  String get toStringNumber => this == null ? '0' : this.toString();

  bool get getBool => this == null ? false : (this == 1 ? true : false);

}