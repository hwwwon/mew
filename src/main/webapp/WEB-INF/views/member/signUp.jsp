<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<%-- head --%>
<c:import url="/WEB-INF/views/layout/head.jsp" />
<%--  CSS  --%>
<link rel="stylesheet" type="text/css" href="<c:url value='/static/css/signUp.css'/>">
</head>
<body>
    <section class="wrap">
        <%--  header   --%>
        <c:import url="/WEB-INF/views/layout/header.jsp"/>

        <section class="signUP-container">
            <form id="signUpForm">
                <div class="signUP-title">Sign Up</div>
                <div class="signUP-box">
                    <p>사용자 이름</p>
                    <input type="text" class="user-name">
                    <p>이메일 (아이디)</p>
                    <div class="email-box">
                        <input type="text" class="user-email" placeholder="Mew@gmail.com">
                        <button>인증하기</button>
                    </div>
                    <p>비밀번호</p>
                    <span>* 대소문자 구분없이 문자, 숫자, 특수문자 조합 6자리 이상</span>
                    <input type="password" class="user-pw" id="userPw">
                    <div class="eyes"><i class="fas fa-eye-slash pw-eyes" id="pwEyes"></i></div>
                    <p>비밀번호 확인</p>
                    <input type="password" class="user-pw-check" id="userPwCheck">
                    <div class="eyes"><i class="fas fa-eye-slash pw-check-eyes" id="pwCheckEyes"></i></div>
                    <%-- 이용 약관 동의 --%>
                    <div class="agree-area">
                        <div class="all-agree"><label><input type="checkbox" name="allAgree" value="allAgree">약관 전체동의</label></div>
                        <div class="agree">
                            <div class="agree-box">
                                <label><input type="checkbox" name="agree" value="agree" id="termsOfService">이용약관 동의(필수)</label>
                                <i class="fa fa-angle-right" id="termsAgree"></i>
                            </div>
                            <div class="agree-box">
                                <label><input type="checkbox" name="agree" value="agree" id="privacyPolicy">개인정보 수집 및 이용동의(필수)</label>
                                <i class="fa fa-angle-right" id="privacyAgree"></i>
                            </div>
                        </div>
                        <div class="agree-modal terms" id="terms">
                            <div class="modal-wrap">
                                <h4>이용약관 동의(필수)</h4>
                                <textarea>
                                    제 1 조 (목적)
                                    본 약관은 문화체육관광부 대표누리집 (이하 "누리집")이 제공하는 모든 서비스(이하 "서비스")의 이용조건 및 절차, 이용자와 누리집의 권리, 의무, 책임사항과 기타 제반 사항을 규정함을 목적으로 합니다.

                                    제 2 조 (약관의 명시와 개정)
                                    1. 누리집은 이 약관의 내용과 주소지, 관리자의 성명, 개인정보보호 담당자의 성명, 연락처(전화, 팩스, 전자우편 주소 등) 등을 이용자가 알 수 있도록 누리집의 초기 서비스화면(전면)에 게시합니다.
                                    2. 누리집은 약관의 규제에 관한 법률, 전자거래기본법, 전자서명법, 정보통신망 이용촉진 및 정보보호 등에 관한 법률 등 관련법을 위배하지 않는 범위에서 이 약관을 개정할 수 있습니다.
                                    3. 누리집이 약관을 개정할 경우에는 적용일자 및 개정사유를 명시하여 현행약관과 함께 누리집의 초기화면에 그 적용일자 7일 이전부터 적용일자 전일 까지 공지합니다.
                                    4. 이 약관에 동의하는 것은 정기적으로 웹을 방문하여 약관의 변경사항을 확인하는 것에 동의함을 의미합니다. 변경된 약관에 대한 정보를 알지 못해 발생하는 이용자의 피해는 누리집에서 책임지지 않습니다.
                                    5. 회원은 변경된 약관에 동의하지 않을 경우 회원 탈퇴(해지)를 요청할 수 있으며, 변경된 약관의 효력 발생일로부터 7일 이후에도 거부의사를 표시하지 아니 하고 서비스를 계속 사용할 경우 약관의 변경 사항에 동의한 것으로 간주됩니다.
                                    6. 본 약관에 명시되지 않은 사항은 전기통신기본법, 전기통신사업법, 정보통신망 이용촉진 및 정보보호 등에 관한 법률 및 기타 관련 법령의 규정에 의합니다.
                                </textarea>
                                <div>
                                    <label><input type="checkbox" name="termsOfService" value="agree">동의</label>
                                    <p class="modal-close">[ 닫기 ]</p>
                                </div>
                            </div>
                        </div>
                        <div class="agree-modal privacy" id="privacy">
                            <div class="modal-wrap">
                                <h4>개인정보 수집 및 이용동의(필수)</h4>
                                <textarea>
                                    제 1 조 (목적)
                                    본 약관은 문화체육관광부 대표누리집 (이하 "누리집")이 제공하는 모든 서비스(이하 "서비스")의 이용조건 및 절차, 이용자와 누리집의 권리, 의무, 책임사항과 기타 제반 사항을 규정함을 목적으로 합니다.

                                    제 2 조 (약관의 명시와 개정)
                                    1. 누리집은 이 약관의 내용과 주소지, 관리자의 성명, 개인정보보호 담당자의 성명, 연락처(전화, 팩스, 전자우편 주소 등) 등을 이용자가 알 수 있도록 누리집의 초기 서비스화면(전면)에 게시합니다.
                                    2. 누리집은 약관의 규제에 관한 법률, 전자거래기본법, 전자서명법, 정보통신망 이용촉진 및 정보보호 등에 관한 법률 등 관련법을 위배하지 않는 범위에서 이 약관을 개정할 수 있습니다.
                                    3. 누리집이 약관을 개정할 경우에는 적용일자 및 개정사유를 명시하여 현행약관과 함께 누리집의 초기화면에 그 적용일자 7일 이전부터 적용일자 전일 까지 공지합니다.
                                    4. 이 약관에 동의하는 것은 정기적으로 웹을 방문하여 약관의 변경사항을 확인하는 것에 동의함을 의미합니다. 변경된 약관에 대한 정보를 알지 못해 발생하는 이용자의 피해는 누리집에서 책임지지 않습니다.
                                    5. 회원은 변경된 약관에 동의하지 않을 경우 회원 탈퇴(해지)를 요청할 수 있으며, 변경된 약관의 효력 발생일로부터 7일 이후에도 거부의사를 표시하지 아니 하고 서비스를 계속 사용할 경우 약관의 변경 사항에 동의한 것으로 간주됩니다.
                                    6. 본 약관에 명시되지 않은 사항은 전기통신기본법, 전기통신사업법, 정보통신망 이용촉진 및 정보보호 등에 관한 법률 및 기타 관련 법령의 규정에 의합니다.
                                </textarea>
                                <div>
                                    <label><input type="checkbox" name="privacyPolicy" value="agree">동의</label>
                                    <p class="modal-close">[ 닫기 ]</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <%--  SNS 회원가입  --%>
                    <div class="sns-area">
                        <div class="sns-img">
                            <img src="<c:url value='/static/images/google.jpg'/>" class="snsImg">
                            <img src="<c:url value='/static/images/naver.png'/>" class="snsImg">
                            <img src="<c:url value='/static/images/kakao.png'/>" class="snsImg">
                        </div>
                        <div class="sns-modal">
                            <div class="sns-modal-wrap">
                                <h4>이용약관 동의(필수)</h4>
                                <textarea>
                                    제 1 조 (목적)
                                    본 약관은 문화체육관광부 대표누리집 (이하 "누리집")이 제공하는 모든 서비스(이하 "서비스")의 이용조건 및 절차, 이용자와 누리집의 권리, 의무, 책임사항과 기타 제반 사항을 규정함을 목적으로 합니다.

                                    제 2 조 (약관의 명시와 개정)
                                    1. 누리집은 이 약관의 내용과 주소지, 관리자의 성명, 개인정보보호 담당자의 성명, 연락처(전화, 팩스, 전자우편 주소 등) 등을 이용자가 알 수 있도록 누리집의 초기 서비스화면(전면)에 게시합니다.
                                    2. 누리집은 약관의 규제에 관한 법률, 전자거래기본법, 전자서명법, 정보통신망 이용촉진 및 정보보호 등에 관한 법률 등 관련법을 위배하지 않는 범위에서 이 약관을 개정할 수 있습니다.
                                    3. 누리집이 약관을 개정할 경우에는 적용일자 및 개정사유를 명시하여 현행약관과 함께 누리집의 초기화면에 그 적용일자 7일 이전부터 적용일자 전일 까지 공지합니다.
                                    4. 이 약관에 동의하는 것은 정기적으로 웹을 방문하여 약관의 변경사항을 확인하는 것에 동의함을 의미합니다. 변경된 약관에 대한 정보를 알지 못해 발생하는 이용자의 피해는 누리집에서 책임지지 않습니다.
                                    5. 회원은 변경된 약관에 동의하지 않을 경우 회원 탈퇴(해지)를 요청할 수 있으며, 변경된 약관의 효력 발생일로부터 7일 이후에도 거부의사를 표시하지 아니 하고 서비스를 계속 사용할 경우 약관의 변경 사항에 동의한 것으로 간주됩니다.
                                    6. 본 약관에 명시되지 않은 사항은 전기통신기본법, 전기통신사업법, 정보통신망 이용촉진 및 정보보호 등에 관한 법률 및 기타 관련 법령의 규정에 의합니다.
                                </textarea>
                                <div>
                                    <label><input type="checkbox" name="termsOfService" value="agree">동의</label>
                                </div>
                                <h4>개인정보 수집 및 이용동의(필수)</h4>
                                <textarea>
                                    제 1 조 (목적)
                                    본 약관은 문화체육관광부 대표누리집 (이하 "누리집")이 제공하는 모든 서비스(이하 "서비스")의 이용조건 및 절차, 이용자와 누리집의 권리, 의무, 책임사항과 기타 제반 사항을 규정함을 목적으로 합니다.

                                    제 2 조 (약관의 명시와 개정)
                                    1. 누리집은 이 약관의 내용과 주소지, 관리자의 성명, 개인정보보호 담당자의 성명, 연락처(전화, 팩스, 전자우편 주소 등) 등을 이용자가 알 수 있도록 누리집의 초기 서비스화면(전면)에 게시합니다.
                                    2. 누리집은 약관의 규제에 관한 법률, 전자거래기본법, 전자서명법, 정보통신망 이용촉진 및 정보보호 등에 관한 법률 등 관련법을 위배하지 않는 범위에서 이 약관을 개정할 수 있습니다.
                                    3. 누리집이 약관을 개정할 경우에는 적용일자 및 개정사유를 명시하여 현행약관과 함께 누리집의 초기화면에 그 적용일자 7일 이전부터 적용일자 전일 까지 공지합니다.
                                    4. 이 약관에 동의하는 것은 정기적으로 웹을 방문하여 약관의 변경사항을 확인하는 것에 동의함을 의미합니다. 변경된 약관에 대한 정보를 알지 못해 발생하는 이용자의 피해는 누리집에서 책임지지 않습니다.
                                    5. 회원은 변경된 약관에 동의하지 않을 경우 회원 탈퇴(해지)를 요청할 수 있으며, 변경된 약관의 효력 발생일로부터 7일 이후에도 거부의사를 표시하지 아니 하고 서비스를 계속 사용할 경우 약관의 변경 사항에 동의한 것으로 간주됩니다.
                                    6. 본 약관에 명시되지 않은 사항은 전기통신기본법, 전기통신사업법, 정보통신망 이용촉진 및 정보보호 등에 관한 법률 및 기타 관련 법령의 규정에 의합니다.
                                </textarea>
                                <div>
                                    <label><input type="checkbox" name="privacyPolicy" value="agree">동의</label>
                                    <p class="sns-modal-close">[ 닫기 ]</p>
                                </div>
                                <button type="submit" class="sns-btn">SNS로 가입하기</button>
                            </div>
                        </div>
                    </div>
                    <button type="submit" class="submit-btn">가입하기</button>
                </div>
            </form>
        </section>

    </section>

<script src="<c:url value='/static/js/signUp.js'/>"></script>
</body>
</html>
