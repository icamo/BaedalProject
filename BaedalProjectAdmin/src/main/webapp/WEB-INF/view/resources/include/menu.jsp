<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="menu">
	<h2>${authInfo.adminId }님 환영합니다.</h2>
	<div class="left_bar">
		<ul>
			<li><a href="/BaedalProjectAdmin/shop/shopList">입점가게 관리</a></li>
			<li><a href="/BaedalProjectAdmin/recommand/recommandList">추천가게 관리</a></li>
			<li>
				<a href="#" class="menu_btn">공지사항 관리</a>
				<div class="hid_menu">
					<ul>
						<li><a href="/BaedalProjectAdmin/announceShop/shopAnnounce">사장님 공지</a></li>
						<li><a href="/BaedalProjectAdmin/announceMem/memAnnounce">회원 공지</a></li>
					</ul>
				</div>
			</li>
			<li>
				<a href="#" class="menu_btn">고객센터 관리</a>
				<div class="hid_menu">
					<ul>
						<li><a href="/BaedalProjectAdmin/fnqShop/shopFnqList">사장님 F&amp;Q</a></li>
						<li><a href="/BaedalProjectAdmin/fnqMem/memFnqList">회원 F&amp;Q</a></li>
					</ul>
				</div>
			</li>
			<li><a href="/BaedalProjectAdmin/event/eventList">이벤트 관리</a></li>
			<li><a href="/BaedalProjectAdmin/coupon/couponList">쿠폰 관리</a></li>
			<li><a href="/BaedalProjectAdmin/admins/adminsList">관리자 계정관리</a></li>
		</ul>
	</div>
</div>