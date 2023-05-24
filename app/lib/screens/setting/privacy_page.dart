import 'package:app/components/common/title_appBar.dart';
import 'package:flutter/material.dart';

class PrivacyPage extends StatelessWidget
{
  const PrivacyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TitleAppBar(title: '개인 정보 방침',),
      body: SingleChildScrollView(
          child: Container(
              padding: EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Text("'도담도담' ('https://dodamdodam.site'이하 '도담도담')은(는) 「개인정보 보호법」 제30조에 따라 정보주체의 개인정보를 보호하고 이와 관련한 고충을 신속하고 원활하게 처리할 수 있도록 하기 위하여 다음과 같이 개인정보 처리방침을 수립·공개합니다. ○ 이 개인정보처리방침은 2023년 5월 10부터 적용됩니다. "),
                  Text("제1조(개인정보의 처리 목적) '도담도담'('https://dodamdodam.site'이하 '도담도담')은(는) 다음의 목적을 위하여 개인정보를 처리합니다. 처리하고 있는 개인정보는 다음의 목적 이외의 용도로는 이용되지 않으며 이용 목적이 변경되는 경우에는 「개인정보 보호법」 제18조에 따라 별도의 동의를 받는 등 필요한 조치를 이행할 예정입니다. 1. 홈페이지 회원가입 및 관리 회원 가입의사 확인, 회원제 서비스 제공에 따른 본인 식별·인증, 회원자격 유지·관리 목적으로 개인정보를 처리합니다. 2. 재화 또는 서비스 제공 서비스 제공, 맞춤서비스 제공, 본인인증을 목적으로 개인정보를 처리합니다. "),
                  Text("제2조(개인정보의 처리 및 보유 기간) ① '도담도담'은(는) 법령에 따른 개인정보 보유·이용기간 또는 정보주체로부터 개인정보를 수집 시에 동의받은 개인정보 보유·이용기간 내에서 개인정보를 처리·보유합니다. ② 각각의 개인정보 처리 및 보유 기간은 다음과 같습니다. 1.홈페이지 회원가입 및 관리 홈페이지 회원가입 및 관리와 관련한 개인정보는 수집.이용에 관한 동의일로부터 1년까지 위 이용목적을 위하여 보유.이용됩니다. 보유근거 : . 관련법령 : 1표시/광고에 관한 기록 : 6개월 2 계약 또는 청약철회 등에 관한 기록 : 5년 3 대금결제 및 재화 등의 공급에 관한 기록 : 5년 4 소비자의 불만 또는 분쟁처리에 관한 기록 : 3년 5 신용정보의 수집/처리 및 이용 등에 관한 기록 : 3년 예외사유 : "),
                  Text("제3조(처리하는 개인정보의 항목) ① '도담도담'은(는) 다음의 개인정보 항목을 처리하고 있습니다. 1'홈페이지 회원가입 및 관리' 필수항목 : 이름, 생년월일, 성별, 로그인ID, 비밀번호, 휴대전화번호 선택항목 : 직업 "),
                  Text("제4조(개인정보처리의 위탁에 관한 사항) ① '도담도담'은(는) 원활한 개인정보 업무처리를 위하여 다음과 같이 개인정보 처리업무를 위탁하고 있습니다. 1. 위탁받는 자 (수탁자) : 위탁하는 업무의 내용 : 위탁기간 : ② '도담도담'은(는) 위탁계약 체결시 「개인정보 보호법」 제26조에 따라 위탁업무 수행목적 외 개인정보 처리금지, 기술적․관리적 보호조치, 재위탁 제한, 수탁자에 대한 관리․감독, 손해배상 등 책임에 관한 사항을 계약서 등 문서에 명시하고, 수탁자가 개인정보를 안전하게 처리하는지를 감독하고 있습니다. ③ 위탁업무의 내용이나 수탁자가 변경될 경우에는 지체없이 본 개인정보 처리방침을 통하여 공개하도록 하겠습니다. "),
                  Text("제5조(개인정보의 파기절차 및 파기방법) ① '도담도담' 은(는) 개인정보 보유기간의 경과, 처리목적 달성 등 개인정보가 불필요하게 되었을 때에는 지체없이 해당 개인정보를 파기합니다. ② 정보주체로부터 동의받은 개인정보 보유기간이 경과하거나 처리목적이 달성되었음에도 불구하고 다른 법령에 따라 개인정보를 계속 보존하여야 하는 경우에는, 해당 개인정보를 별도의 데이터베이스(DB)로 옮기거나 보관장소를 달리하여 보존합니다. 1. 법령 근거 : 2. 보존하는 개인정보 항목 : 계좌정보, 거래날짜 ③ 개인정보 파기의 절차 및 방법은 다음과 같습니다. 1. 파기절차 '도담도담' 은(는) 파기 사유가 발생한 개인정보를 선정하고,'도담도담' 의 개인정보 보호책임자의 승인을 받아 개인정보를 파기합니다. "),
                  Text("제6조(정보주체와 법정대리인의 권리·의무 및 그 행사방법에 관한 사항) ① 정보주체는 도담도담에 대해 언제든지 개인정보 열람·정정·삭제·처리정지 요구 등의 권리를 행사할 수 있습니다. ② 제1항에 따른 권리 행사는도담도담에 대해 「개인정보 보호법」 시행령 제41조제1항에 따라 서면, 전자우편, 모사전송(FAX) 등을 통하여 하실 수 있으며 도담도담은(는) 이에 대해 지체 없이 조치하겠습니다. ③ 제1항에 따른 권리 행사는 정보주체의 법정대리인이나 위임을 받은 자 등 대리인을 통하여 하실 수 있습니다.이 경우 “개인정보 처리 방법에 관한 고시(제2020-7호)” 별지 제11호 서식에 따른 위임장을 제출하셔야 합니다. ④ 개인정보 열람 및 처리정지 요구는 「개인정보 보호법」 제35조 제4항, 제37조 제2항에 의하여 정보주체의 권리가 제한 될 수 있습니다. ⑤ 개인정보의 정정 및 삭제 요구는 다른 법령에서 그 개인정보가 수집 대상으로 명시되어 있는 경우에는 그 삭제를 요구할 수 없습니다. ⑥ 도담도담은(는) 정보주체 권리에 따른 열람의 요구, 정정·삭제의 요구, 처리정지의 요구 시 열람 등 요구를 한 자가 본인이거나 정당한 대리인인지를 확인합니다. "),
                  Text("제7조(개인정보의 안전성 확보조치에 관한 사항) '도담도담' 은(는) 개인정보의 안전성 확보를 위해 다음과 같은 조치를 취하고 있습니다. 1. 내부관리계획의 수립 및 시행 개인정보의 안전한 처리를 위하여 내부관리계획을 수립하고 시행하고 있습니다. "),
                  Text("제8조(개인정보를 자동으로 수집하는 장치의 설치·운영 및 그 거부에 관한 사항) 도담도담 은(는) 정보주체의 이용정보를 저장하고 수시로 불러오는 ‘쿠키(cookie)’를 사용하지 않습니다. "),
                  Text("제9조(행태정보의 수집·이용·제공 및 거부 등에 관한 사항) 행태정보의 수집·이용·제공 및 거부등에 관한 사항 '도담도담'은(는) 온라인 맞춤형 광고 등을 위한 행태정보를 수집·이용·제공하지 않습니다. "),
                  Text("제10조(추가적인 이용·제공 판단기준) '도담도담' 은(는) ｢개인정보 보호법｣ 제15조제3항 및 제17조제4항에 따라 ｢개인정보 보호법 시행령｣ 제14조의2에 따른 사항을 고려하여 정보주체의 동의 없이 개인정보를 추가적으로 이용·제공할 수 있습니다. 이에 따라 '도담도담' 가(이) 정보주체의 동의 없이 추가적인 이용·제공을 하기 위해서 다음과 같은 사항을 고려하였습니다. ▶ 개인정보를 추가적으로 이용·제공하려는 목적이 당초 수집 목적과 관련성이 있는지 여부 ▶ 개인정보를 수집한 정황 또는 처리 관행에 비추어 볼 때 추가적인 이용·제공에 대한 예측 가능성이 있는지 여부 ▶ 개인정보의 추가적인 이용·제공이 정보주체의 이익을 부당하게 침해하는지 여부 ▶ 가명처리 또는 암호화 등 안전성 확보에 필요한 조치를 하였는지 여부 ※ 추가적인 이용·제공 시 고려사항에 대한 판단기준은 사업자/단체 스스로 자율적으로 판단하여 작성·공개함 "),
                  Text("제11조(가명정보를 처리하는 경우 가명정보 처리에 관한 사항) '도담도담' 은(는) 다음과 같은 목적으로 가명정보를 처리하고 있습니다. ▶ 가명정보의 처리 목적 - 직접작성 가능합니다. ▶ 가명정보의 처리 및 보유기간 - 직접작성 가능합니다. ▶ 가명정보의 제3자 제공에 관한 사항(해당되는 경우에만 작성) - 직접작성 가능합니다. ▶ 가명정보 처리의 위탁에 관한 사항(해당되는 경우에만 작성) - 직접작성 가능합니다. ▶ 가명처리하는 개인정보의 항목 - 직접작성 가능합니다. ▶ 법 제28조의4(가명정보에 대한 안전조치 의무 등)에 따른 가명정보의 안전성 확보조치에 관한 사항 - 직접작성 가능합니다. "),
                  Text("제12조 (개인정보 보호책임자에 관한 사항) ① 도담도담 은(는) 개인정보 처리에 관한 업무를 총괄해서 책임지고, 개인정보 처리와 관련한 정보주체의 불만처리 및 피해구제 등을 위하여 아래와 같이 개인정보 보호책임자를 지정하고 있습니다. ▶ 개인정보 보호책임자 성명 :김소정 직책 :배포 직급 :팀장 연락처 :010-8975-1598, dodamdodam.a202@gmail.com, x ※ 개인정보 보호 담당부서로 연결됩니다. ▶ 개인정보 보호 담당부서 부서명 : 담당자 : 연락처 :, , ② 정보주체께서는 도담도담 의 서비스(또는 사업)을 이용하시면서 발생한 모든 개인정보 보호 관련 문의, 불만처리, 피해구제 등에 관한 사항을 개인정보 보호책임자 및 담당부서로 문의하실 수 있습니다. 도담도담 은(는) 정보주체의 문의에 대해 지체 없이 답변 및 처리해드릴 것입니다. "),
                  Text("제13조(국내대리인의 지정) 정보주체는 ｢개인정보 보호법｣ 제39조의11에 따라 지정된 '도담도담'의 국내대리인에게 개인정보 관련 고충처리 등의 업무를 위하여 연락을 취할 수 있습니다. '도담도담' 은(는) 정보주체의 개인정보 관련 고충처리 등 개인정보 보호책임자의 업무 등을 신속하게 처리할 수 있도록 노력하겠습니다. ▶ '도담도담' 은(는) ｢개인정보 보호법｣ 제39조의11에 따라 국내대리인을 지정하였습니다. - 국내대리인의 성명 : 이연희 - 국내대리인의 주소 : 서울시 강남구 테헤란로 212 멀티캠퍼스 8층 802호- 국내대리인의 전화번호 : 010-7107-3889 "),
                  Text("제14조(개인정보의 열람청구를 접수·처리하는 부서) 정보주체는 ｢개인정보 보호법｣ 제35조에 따른 개인정보의 열람 청구를 아래의 부서에 할 수 있습니다. '도담도담'은(는) 정보주체의 개인정보 열람청구가 신속하게 처리되도록 노력하겠습니다. ▶ 개인정보 열람청구 접수·처리 부서 부서명 : 정보부, 담당자 : 김나현, 연락처 : 010-7107-3889"),
                  Text("제15조(정보주체의 권익침해에 대한 구제방법) 정보주체는 개인정보침해로 인한 구제를 받기 위하여 개인정보분쟁조정위원회, 한국인터넷진흥원 개인정보침해신고센터 등에 분쟁해결이나 상담 등을 신청할 수 있습니다. 이 밖에 기타 개인정보침해의 신고, 상담에 대하여는 아래의 기관에 문의하시기 바랍니다. 1. 개인정보분쟁조정위원회 : (국번없이) 1833-6972 (www.kopico.go.kr) 2. 개인정보침해신고센터 : (국번없이) 118 (privacy.kisa.or.kr) 3. 대검찰청 : (국번없이) 1301 (www.spo.go.kr) 4. 경찰청 : (국번없이) 182 (ecrm.cyber.go.kr) 「개인정보보호법」제35조(개인정보의 열람), 제36조(개인정보의 정정·삭제), 제37조(개인정보의 처리정지 등)의 규정에 의한 요구에 대 하여 공공기관의 장이 행한 처분 또는 부작위로 인하여 권리 또는 이익의 침해를 받은 자는 행정심판법이 정하는 바에 따라 행정심판을 청구할 수 있습니다. ※ 행정심판에 대해 자세한 사항은 중앙행정심판위원회(www.simpan.go.kr) 홈페이지를 참고하시기 바랍니다. "),
                  Text("제16조(영상정보처리기기 운영·관리에 관한 사항) ① '도담도담'은(는) 아래와 같이 영상정보처리기기를 설치·운영하고 있습니다. 1.영상정보처리기기 설치근거·목적 : '도담도담'의 2.설치 대수, 설치 위치, 촬영 범위 : 설치대수 : 대 설치위치 : 촬영범위 : 3.관리책임자, 담당부서 및 영상정보에 대한 접근권한자 : 4.영상정보 촬영시간, 보관기간, 보관장소, 처리방법 촬영시간 : 시간 보관기간 : 촬영시부터 보관장소 및 처리방법 : 5.영상정보 확인 방법 및 장소 : 6.정보주체의 영상정보 열람등요구에 대한 조치 : 개인영상정보 열람.존재확인 청구서로 신청하여야 하며, 정보주체 자신이 촬영된 경우 또는 명백히 정보주체의 생명.신체.재산 이익을 위해 필요한 경우에 한해 열람을 허용함 7.영상정보처리기기 설치근거·목적 : "),
                  Text("제17조(개인정보 처리방침 변경) ① 이 개인정보처리방침은 2023년 5월 10부터 적용됩니다."),
                ],
              ))),
    );
  }
}
