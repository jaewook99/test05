<%@ page language="java" contentType="text/html; charset=UTF-8" 
    pageEncoding="UTF-8"%> 
<!doctype html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="description" content="">
  <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
  <meta name="generator" content="Hugo 0.104.2">
  <title>봉사 예약</title>

  <link rel="canonical" href="https://getbootstrap.com/docs/5.2/examples/headers/">
  <!-- CSS only -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
  <!-- JavaScript Bundle with Popper -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
    crossorigin="anonymous"></script>
  <link href="../assets/dist/css/bootstrap.min.css" rel="stylesheet">
  <link rel="canonical" href="https://getbootstrap.com/docs/5.2/examples/dropdowns/">
  <link href="dropdowns.css" rel="stylesheet">
  <link href="../assets/dist/css/bootstrap.min.css" rel="stylesheet">


  <style>
    .dropdown-menu {
      margin: 4rem auto;
    }

    .dropdown-item-danger {
      color: var(--bs-red);
    }

    .dropdown-item-danger:hover,
    .dropdown-item-danger:focus {
      color: #fff;
      background-color: var(--bs-red);
    }

    .dropdown-item-danger.active {
      background-color: var(--bs-red);
    }

    .btn-hover-light {
      background-color: var(--bs-white);
    }

    .btn-hover-light:hover,
    .btn-hover-light:focus {
      color: var(--bs-blue);
      background-color: var(--bs-light);
    }

    .cal-month,
    .cal-days,
    .cal-weekdays {
      display: grid;
      grid-template-columns: repeat(7, 1fr);
      align-items: center;
    }

    .cal-month-name {
      grid-column-start: 2;
      grid-column-end: 7;
      text-align: center;
    }

    .cal-weekday,
    .cal-btn {
      display: flex;
      flex-shrink: 0;
      align-items: center;
      justify-content: center;
      height: 3rem;
      padding: 0;
    }

    .cal-btn:not([disabled]) {
      font-weight: 500;
    }

    .cal-btn:hover,
    .cal-btn:focus {
      background-color: rgba(0, 0, 0, .05);
    }

    .cal-btn[disabled] {
      border: 0;
      opacity: .5;
    }

    .form-control-dark {
      background-color: rgba(255, 255, 255, .05);
      border-color: rgba(255, 255, 255, .15);
    }


    .w-220px {
      width: 220px;
    }

    .w-280px {
      width: 280px;
    }

    .w-340px {
      width: 340px;
    }

    .w-600px {
      width: 600px;
    }

    .vol-info {
      text-align: center;
      margin: auto;
    }

    .vol-photo {
      width: 100%;
      height: 350px;
    }

    .choice-cal {
      display: flex;
    }

    .choice-cal-text {
      text-align: center;
    }

    .cal {
      flex-basis: 50%;
    }

    .cal-info {
      height: 200px;
      margin: auto;
      flex-basis: 50%;
    }

    .select-time {
      margin: auto;
    }

    .btn-lg {
      text-align: center;
      margin: auto;
    }

    .day1 {
      width: 25px;
      height: 25px;
      background-color: black;
    }

    .day2 {
      width: 25px;
      height: 25px;
      background-color: gray;
    }

    .day3 {
      width: 25px;
      height: 25px;
      background-color: green;
    }

    .choice-btn {

      height: 200px;
      text-align: center;
      margin: auto;
      margin-top: 50px;
      align-items: center;
    }
  </style>

  <link href="headers.css" rel="stylesheet">
</head>

<body>

	<%@include file="/WEB-INF/views/common/header.jsp"%> 
	
    <!-- 본문 여기에 -->
    <div class="vol-info">
      <img class="vol-photo" src="https://dimg.donga.com/wps/NEWS/IMAGE/2022/01/28/111500268.2.jpg" alt="">
      <h1>역삼보호소</h1>ft
      <br><br><br>
    </div>
    <div>
      <h2 class="choice-cal-text">날짜 선택 ∨</h2>
      <hr>
    </div>
    <div class="choice-cal">
      <!--달력-->
      <div class="cal">
        <svg xmlns="http://www.w3.org/2000/svg" style="display: none;">
          <symbol id="bootstrap" viewBox="0 0 118 94">
            <path fill-rule="evenodd" clip-rule="evenodd"
              d="M24.509 0c-6.733 0-11.715 5.893-11.492 12.284.214 6.14-.064 14.092-2.066 20.577C8.943 39.365 5.547 43.485 0 44.014v5.972c5.547.529 8.943 4.649 10.951 11.153 2.002 6.485 2.28 14.437 2.066 20.577C12.794 88.106 17.776 94 24.51 94H93.5c6.733 0 11.714-5.893 11.491-12.284-.214-6.14.064-14.092 2.066-20.577 2.009-6.504 5.396-10.624 10.943-11.153v-5.972c-5.547-.529-8.934-4.649-10.943-11.153-2.002-6.484-2.28-14.437-2.066-20.577C105.214 5.894 100.233 0 93.5 0H24.508zM80 57.863C80 66.663 73.436 72 62.543 72H44a2 2 0 01-2-2V24a2 2 0 012-2h18.437c9.083 0 15.044 4.92 15.044 12.474 0 5.302-4.01 10.049-9.119 10.88v.277C75.317 46.394 80 51.21 80 57.863zM60.521 28.34H49.948v14.934h8.905c6.884 0 10.68-2.772 10.68-7.727 0-4.643-3.264-7.207-9.012-7.207zM49.948 49.2v16.458H60.91c7.167 0 10.964-2.876 10.964-8.281 0-5.406-3.903-8.178-11.425-8.178H49.948z">
            </path>
          </symbol>

          <symbol id="exclamation-triangle-fill" viewBox="0 0 16 16">
            <path
              d="M8.982 1.566a1.13 1.13 0 0 0-1.96 0L.165 13.233c-.457.778.091 1.767.98 1.767h13.713c.889 0 1.438-.99.98-1.767L8.982 1.566zM8 5c.535 0 .954.462.9.995l-.35 3.507a.552.552 0 0 1-1.1 0L7.1 5.995A.905.905 0 0 1 8 5zm.002 6a1 1 0 1 1 0 2 1 1 0 0 1 0-2z" />
          </symbol>

          <symbol id="check2" viewBox="0 0 16 16">
            <path
              d="M13.854 3.646a.5.5 0 0 1 0 .708l-7 7a.5.5 0 0 1-.708 0l-3.5-3.5a.5.5 0 1 1 .708-.708L6.5 10.293l6.646-6.647a.5.5 0 0 1 .708 0z" />
          </symbol>

          <symbol id="check2-circle" viewBox="0 0 16 16">
            <path
              d="M2.5 8a5.5 5.5 0 0 1 8.25-4.764.5.5 0 0 0 .5-.866A6.5 6.5 0 1 0 14.5 8a.5.5 0 0 0-1 0 5.5 5.5 0 1 1-11 0z" />
            <path
              d="M15.354 3.354a.5.5 0 0 0-.708-.708L8 9.293 5.354 6.646a.5.5 0 1 0-.708.708l3 3a.5.5 0 0 0 .708 0l7-7z" />
          </symbol>

          <symbol id="bookmark-star" viewBox="0 0 16 16">
            <path
              d="M7.84 4.1a.178.178 0 0 1 .32 0l.634 1.285a.178.178 0 0 0 .134.098l1.42.206c.145.021.204.2.098.303L9.42 6.993a.178.178 0 0 0-.051.158l.242 1.414a.178.178 0 0 1-.258.187l-1.27-.668a.178.178 0 0 0-.165 0l-1.27.668a.178.178 0 0 1-.257-.187l.242-1.414a.178.178 0 0 0-.05-.158l-1.03-1.001a.178.178 0 0 1 .098-.303l1.42-.206a.178.178 0 0 0 .134-.098L7.84 4.1z" />
            <path
              d="M2 2a2 2 0 0 1 2-2h8a2 2 0 0 1 2 2v13.5a.5.5 0 0 1-.777.416L8 13.101l-5.223 2.815A.5.5 0 0 1 2 15.5V2zm2-1a1 1 0 0 0-1 1v12.566l4.723-2.482a.5.5 0 0 1 .554 0L13 14.566V2a1 1 0 0 0-1-1H4z" />
          </symbol>

          <symbol id="grid-fill" viewBox="0 0 16 16">
            <path
              d="M1 2.5A1.5 1.5 0 0 1 2.5 1h3A1.5 1.5 0 0 1 7 2.5v3A1.5 1.5 0 0 1 5.5 7h-3A1.5 1.5 0 0 1 1 5.5v-3zm8 0A1.5 1.5 0 0 1 10.5 1h3A1.5 1.5 0 0 1 15 2.5v3A1.5 1.5 0 0 1 13.5 7h-3A1.5 1.5 0 0 1 9 5.5v-3zm-8 8A1.5 1.5 0 0 1 2.5 9h3A1.5 1.5 0 0 1 7 10.5v3A1.5 1.5 0 0 1 5.5 15h-3A1.5 1.5 0 0 1 1 13.5v-3zm8 0A1.5 1.5 0 0 1 10.5 9h3a1.5 1.5 0 0 1 1.5 1.5v3a1.5 1.5 0 0 1-1.5 1.5h-3A1.5 1.5 0 0 1 9 13.5v-3z" />
          </symbol>

          <symbol id="stars" viewBox="0 0 16 16">
            <path
              d="M7.657 6.247c.11-.33.576-.33.686 0l.645 1.937a2.89 2.89 0 0 0 1.829 1.828l1.936.645c.33.11.33.576 0 .686l-1.937.645a2.89 2.89 0 0 0-1.828 1.829l-.645 1.936a.361.361 0 0 1-.686 0l-.645-1.937a2.89 2.89 0 0 0-1.828-1.828l-1.937-.645a.361.361 0 0 1 0-.686l1.937-.645a2.89 2.89 0 0 0 1.828-1.828l.645-1.937zM3.794 1.148a.217.217 0 0 1 .412 0l.387 1.162c.173.518.579.924 1.097 1.097l1.162.387a.217.217 0 0 1 0 .412l-1.162.387A1.734 1.734 0 0 0 4.593 5.69l-.387 1.162a.217.217 0 0 1-.412 0L3.407 5.69A1.734 1.734 0 0 0 2.31 4.593l-1.162-.387a.217.217 0 0 1 0-.412l1.162-.387A1.734 1.734 0 0 0 3.407 2.31l.387-1.162zM10.863.099a.145.145 0 0 1 .274 0l.258.774c.115.346.386.617.732.732l.774.258a.145.145 0 0 1 0 .274l-.774.258a1.156 1.156 0 0 0-.732.732l-.258.774a.145.145 0 0 1-.274 0l-.258-.774a1.156 1.156 0 0 0-.732-.732L9.1 2.137a.145.145 0 0 1 0-.274l.774-.258c.346-.115.617-.386.732-.732L10.863.1z" />
          </symbol>

          <symbol id="film" viewBox="0 0 16 16">
            <path
              d="M0 1a1 1 0 0 1 1-1h14a1 1 0 0 1 1 1v14a1 1 0 0 1-1 1H1a1 1 0 0 1-1-1V1zm4 0v6h8V1H4zm8 8H4v6h8V9zM1 1v2h2V1H1zm2 3H1v2h2V4zM1 7v2h2V7H1zm2 3H1v2h2v-2zm-2 3v2h2v-2H1zM15 1h-2v2h2V1zm-2 3v2h2V4h-2zm2 3h-2v2h2V7zm-2 3v2h2v-2h-2zm2 3h-2v2h2v-2z" />
          </symbol>

          <symbol id="joystick" viewBox="0 0 16 16">
            <path
              d="M10 2a2 2 0 0 1-1.5 1.937v5.087c.863.083 1.5.377 1.5.726 0 .414-.895.75-2 .75s-2-.336-2-.75c0-.35.637-.643 1.5-.726V3.937A2 2 0 1 1 10 2z" />
            <path
              d="M0 9.665v1.717a1 1 0 0 0 .553.894l6.553 3.277a2 2 0 0 0 1.788 0l6.553-3.277a1 1 0 0 0 .553-.894V9.665c0-.1-.06-.19-.152-.23L9.5 6.715v.993l5.227 2.178a.125.125 0 0 1 .001.23l-5.94 2.546a2 2 0 0 1-1.576 0l-5.94-2.546a.125.125 0 0 1 .001-.23L6.5 7.708l-.013-.988L.152 9.435a.25.25 0 0 0-.152.23z" />
          </symbol>

          <symbol id="music-note-beamed" viewBox="0 0 16 16">
            <path
              d="M6 13c0 1.105-1.12 2-2.5 2S1 14.105 1 13c0-1.104 1.12-2 2.5-2s2.5.896 2.5 2zm9-2c0 1.105-1.12 2-2.5 2s-2.5-.895-2.5-2 1.12-2 2.5-2 2.5.895 2.5 2z" />
            <path fill-rule="evenodd" d="M14 11V2h1v9h-1zM6 3v10H5V3h1z" />
            <path d="M5 2.905a1 1 0 0 1 .9-.995l8-.8a1 1 0 0 1 1.1.995V3L5 4V2.905z" />
          </symbol>

          <symbol id="files" viewBox="0 0 16 16">
            <path
              d="M13 0H6a2 2 0 0 0-2 2 2 2 0 0 0-2 2v10a2 2 0 0 0 2 2h7a2 2 0 0 0 2-2 2 2 0 0 0 2-2V2a2 2 0 0 0-2-2zm0 13V4a2 2 0 0 0-2-2H5a1 1 0 0 1 1-1h7a1 1 0 0 1 1 1v10a1 1 0 0 1-1 1zM3 4a1 1 0 0 1 1-1h7a1 1 0 0 1 1 1v10a1 1 0 0 1-1 1H4a1 1 0 0 1-1-1V4z" />
          </symbol>

          <symbol id="image-fill" viewBox="0 0 16 16">
            <path
              d="M.002 3a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v10a2 2 0 0 1-2 2h-12a2 2 0 0 1-2-2V3zm1 9v1a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1V9.5l-3.777-1.947a.5.5 0 0 0-.577.093l-3.71 3.71-2.66-1.772a.5.5 0 0 0-.63.062L1.002 12zm5-6.5a1.5 1.5 0 1 0-3 0 1.5 1.5 0 0 0 3 0z" />
          </symbol>

          <symbol id="trash" viewBox="0 0 16 16">
            <path
              d="M5.5 5.5A.5.5 0 0 1 6 6v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm2.5 0a.5.5 0 0 1 .5.5v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm3 .5a.5.5 0 0 0-1 0v6a.5.5 0 0 0 1 0V6z" />
            <path fill-rule="evenodd"
              d="M14.5 3a1 1 0 0 1-1 1H13v9a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V4h-.5a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1H6a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1h3.5a1 1 0 0 1 1 1v1zM4.118 4 4 4.059V13a1 1 0 0 0 1 1h6a1 1 0 0 0 1-1V4.059L11.882 4H4.118zM2.5 3V2h11v1h-11z" />
          </symbol>

          <symbol id="question-circle" viewBox="0 0 16 16">
            <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z" />
            <path
              d="M5.255 5.786a.237.237 0 0 0 .241.247h.825c.138 0 .248-.113.266-.25.09-.656.54-1.134 1.342-1.134.686 0 1.314.343 1.314 1.168 0 .635-.374.927-.965 1.371-.673.489-1.206 1.06-1.168 1.987l.003.217a.25.25 0 0 0 .25.246h.811a.25.25 0 0 0 .25-.25v-.105c0-.718.273-.927 1.01-1.486.609-.463 1.244-.977 1.244-2.056 0-1.511-1.276-2.241-2.673-2.241-1.267 0-2.655.59-2.75 2.286zm1.557 5.763c0 .533.425.927 1.01.927.609 0 1.028-.394 1.028-.927 0-.552-.42-.94-1.029-.94-.584 0-1.009.388-1.009.94z" />
          </symbol>

          <symbol id="arrow-left-short" viewBox="0 0 16 16">
            <path fill-rule="evenodd"
              d="M12 8a.5.5 0 0 1-.5.5H5.707l2.147 2.146a.5.5 0 0 1-.708.708l-3-3a.5.5 0 0 1 0-.708l3-3a.5.5 0 1 1 .708.708L5.707 7.5H11.5a.5.5 0 0 1 .5.5z" />
          </symbol>

          <symbol id="arrow-right-short" viewBox="0 0 16 16">
            <path fill-rule="evenodd"
              d="M4 8a.5.5 0 0 1 .5-.5h5.793L8.146 5.354a.5.5 0 1 1 .708-.708l3 3a.5.5 0 0 1 0 .708l-3 3a.5.5 0 0 1-.708-.708L10.293 8.5H4.5A.5.5 0 0 1 4 8z" />
          </symbol>
        </svg>
        <div class="dropdown-menu d-block position-static p-2 shadow rounded-3 w-340px">
          <div class="d-grid gap-1">
            <div class="cal">
              <div class="cal-month">
                <button class="btn cal-btn" type="button">
                  <svg class="bi" width="16" height="16">
                    <use xlink:href="#arrow-left-short" />
                  </svg>
                </button>
                <strong class="cal-month-name">June</strong>
                <select class="form-select cal-month-name d-none">
                  <option value="January">January</option>
                  <option value="February">February</option>
                  <option value="March">March</option>
                  <option value="April">April</option>
                  <option value="May">May</option>
                  <option selected value="June">June</option>
                  <option value="July">July</option>
                  <option value="August">August</option>
                  <option value="September">September</option>
                  <option value="October">October</option>
                  <option value="November">November</option>
                  <option value="December">December</option>
                </select>
                <button class="btn cal-btn" type="button">
                  <svg class="bi" width="16" height="16">
                    <use xlink:href="#arrow-right-short" />
                  </svg>
                </button>
              </div>
              <div class="cal-weekdays text-muted">
                <div class="cal-weekday">Sun</div>
                <div class="cal-weekday">Mon</div>
                <div class="cal-weekday">Tue</div>
                <div class="cal-weekday">Wed</div>
                <div class="cal-weekday">Thu</div>
                <div class="cal-weekday">Fri</div>
                <div class="cal-weekday">Sat</div>
              </div>
              <div class="cal-days">
                <button class="btn cal-btn" disabled type="button">30</button>
                <button class="btn cal-btn" disabled type="button">31</button>

                <button class="btn cal-btn" type="button">1</button>
                <button class="btn cal-btn" type="button">2</button>
                <button class="btn cal-btn" type="button">3</button>
                <button class="btn cal-btn" type="button">4</button>
                <button class="btn cal-btn" type="button">5</button>
                <button class="btn cal-btn" type="button">6</button>
                <button class="btn cal-btn" type="button">7</button>

                <button class="btn cal-btn" type="button">8</button>
                <button class="btn cal-btn" type="button">9</button>
                <button class="btn cal-btn" type="button">10</button>
                <button class="btn cal-btn" type="button">11</button>
                <button class="btn cal-btn" type="button">12</button>
                <button class="btn cal-btn" type="button">13</button>
                <button class="btn cal-btn" type="button">14</button>

                <button class="btn cal-btn" type="button">15</button>
                <button class="btn cal-btn" type="button">16</button>
                <button class="btn cal-btn" type="button">17</button>
                <button class="btn cal-btn" type="button">18</button>
                <button class="btn cal-btn" type="button">19</button>
                <button class="btn cal-btn" type="button">20</button>
                <button class="btn cal-btn" type="button">21</button>

                <button class="btn cal-btn" type="button">22</button>
                <button class="btn cal-btn" type="button">23</button>
                <button class="btn cal-btn" type="button">24</button>
                <button class="btn cal-btn" type="button">25</button>
                <button class="btn cal-btn" type="button">26</button>
                <button class="btn cal-btn" type="button">27</button>
                <button class="btn cal-btn" type="button">28</button>

                <button class="btn cal-btn" type="button">29</button>
                <button class="btn cal-btn" type="button">30</button>
                <button class="btn cal-btn" type="button">31</button>
              </div>
            </div>
          </div>
        </div>
        <script src="../assets/dist/js/bootstrap.bundle.min.js"></script>
      </div>
      <!--달력-->
      <div class="cal-info">
        <table class="cal-info">
          <tr>
            <td>
              <div class="day1"></div>
            </td>
            <td>
              <h5>예약 가능일</h5>
            </td>
          <tr>
            <td>
              <div class="day2"></div>
            </td>
            <td>
              <h5>예약 불가일</h5>
            </td>
          <tr>
            <td>
              <div class="day3"></div>
            </td>
            <td>
              <h5>예약 선택일</h5>
            </td>
          </tr>
        </table>
      </div>
    </div>
    <div>
      <h2 class="choice-cal-text">시간 선택 ∨</h2>
      <hr>
      <table class="select-time">
        <tr>
          <td>
            <div class="form-group">
              <label for="exampleSelect1" class="form-label mt-4">시작 시간</label>
              <select class="form-select" id="exampleSelect1">
                <option>10:00</option>
                <option>11:00</option>
                <option>12:00</option>
                <option>13:00</option>
                <option>14:00</option>
                <option>15:00</option>
                <option>16:00</option>
                <option>17:00</option>
                <option>18:00</option>
              </select>
            </div>
          </td>
          <td>
            <div class="form-group">
              <label for="exampleSelect1" class="form-label mt-4">종료 시간</label>
              <select class="form-select" id="exampleSelect1">
                <option>10:00</option>
                <option>11:00</option>
                <option>12:00</option>
                <option>13:00</option>
                <option>14:00</option>
                <option>15:00</option>
                <option>16:00</option>
                <option>17:00</option>
                <option>18:00</option>
              </select>
            </div>

          </td>
        </tr>
      </table>
      <div class="choice-btn">
        <button onclick="location.href='/app01/volunFix.jsp'" class="btn btn-primary btn-lg" type="button">선택 완료</button>
      </div>
    </div>
    <!-- FOOTER -->
    <%@include file="/WEB-INF/views/common/footer.jsp" %>
    

</body>

</html>