/** 
 *  View -> Controller() 요청
 * Contrller -> Repository 요청
 * Repository -> 스프링 서버 요청
 * Controller -> viewModel 응답  
 * 
 * Controller 책임 : 
 *                        View요청 받고, Repository에게 통신요청하고, 
 *                        비즈니스 로직 처리(페이지이동, viewmodel 데이터 담기)
 * contrller에서 router이동
 * Repository 책임 : 통신하고, 파싱하기
 * ViewModel 책임 : 데이터 담기
 * */

class UserController {}
