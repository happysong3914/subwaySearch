import 'package:subway_search/data/model/subway.dart';

import '../dto/subway_dto.dart';

extension ToSubway on RealtimeArrivalList {
  Subway toSubway() {
    return Subway(subwayLineName: subwayIdNameMatching(subwayId ??'') ,
      updnLine:  updnLine ?? '',
      trainLineNm: trainLineNm ?? '',
      statnNm: statnNm ?? '',
      recptnDt: recptnDt ?? '',
      arvlMsgArrival2: arvlMsg2 ?? '',
      arvlMsgArrival3: arvlMsg3 ?? '',
      arvlCd: arvlCdMatching(arvlCd ?? ''),

    );
  }
}

String subwayIdNameMatching(String value){
  if(value == '1001'){
    return '1호선';
  }else if(value == '1002'){
    return '2호선';
  }else if(value == '1003'){
    return '3호선';
  }else if(value == '1004'){
    return '4호선';
  }else if(value == '1005'){
    return '5호선';
  }else if(value == '1006'){
    return '6호선';
  }else if(value == '1007'){
    return '7호선';
  }else if(value == '1008'){
    return '8호선';
  }else if(value == '1009'){
    return '9호선';
  }else if(value == '1061'){
    return '중앙선';
  }else if(value == '1063'){
    return '경의중앙선';
  }else if(value == '1065'){
    return '공항철도';
  }else if(value == '1067'){
    return '경춘선';
  }else if(value == '1075'){
    return '수의분당선';
  }else if(value == '1077'){
    return '신분당선';
  }else if(value == '1092'){
    return '우이신설선';
  }else if(value == '1093'){
    return '서해선';
  }else if(value == '1081'){
    return '경감선';
  }else if(value == '1032'){
    return 'GTX-A';
  }

  return '';

  return '';
}

String arvlCdMatching (String value){
  if(value == '0'){
    return '진입';
  }else if(value == '1'){
    return '도착';
  }else if(value == '2'){
    return '출발';
  }else if(value == '3'){
    return '전역출발';
  }else if(value == '4'){
    return '전역진입';
  }else if(value == '5'){
    return '전역도착';
  }else if(value == '99'){
    return '운행중';
  }
  return '';
}