<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="false"%>

<div id="top" class="top">
	<div class="explanation text-white mb-3">나의 개발자 유형 찾는 중...</div>
	<div class="speech-container mb-3">
		<div class="p-3 speech-bubble">
			<div class="number">
				<span><span id="qNum">${questions[0].questionNum}</span>/12번째 </span>
			</div>
		</div>
		<div class="p-3 speech-shadow"></div>
	</div>
</div>
<div id="middle" class="middle text-center">
	<div class="bar bar-q text-white">
		<!-- 	<span class="bar-text">내가 개발자라면?</span> -->
	</div>
	<div class="p-3 window-question bg-white">
		<div class="question-format">
			<span class="void">void </span><span class="Qnum">Question<span id="Qnum">${questions[0].questionNum}</span></span><span
				class="char">() {</span>
		</div>
			<div class="question-content" >
				<span class="printf">printf</span><span class="char">(</span><span
					class="question">${questions[0].question}</span><span
					class="char">);</span>
			</div>
		<div class="question-format">
			<span class="char">}</span>
		</div>
	</div>
</div>


