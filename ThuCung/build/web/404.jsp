

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>404 Error</title>
        <style>
            html {
                background: #f7f9ff;
                font-size: 10px;
            }

            .errorPageRap {
                text-align: center;
                margin: 5rem 0 13rem 0;
            }
            .errorPageRap .holoContainer {
                position: relative;
                width: 25.8rem;
                height: 40rem;
                margin: 0 0 30rem 0;
                display: inline-block;
                vertical-align: middle;
            }
            .errorPageRap h1 {
                font-family: 'Roboto', Arial;
                text-align: left;
                font-size: 2.8rem;
                font-weight: 400;
                color: #506280;
                line-height: 5.4rem;
                display: inline-block;
                vertical-align: text-bottom;
                margin: 0;
                margin-left: 4rem;
                width: 50%;
                min-width: 43.6rem;
                max-width: 64rem;
            }
            .errorPageRap h1 span {
                display: inline-block;
                width: 3rem;
            }
            .errorPageRap h1 span img {
                width: 100%;
            }
            .errorPageRap h1 a {
                color: #404a5d;
                font-size: 3.3rem;
                text-decoration: none;
                font-weight: 900;
                transition: all .2s ease;
            }
            .errorPageRap h1 a:hover {
                opacity: .6;
            }
            .errorPageRap .holoContainer > img {
                position: absolute;
                top: 0;
                left: 1.4rem;
                z-index: 999;
                width: 86%;
            }
            .errorPageRap .holoContainer > img:nth-child(2),
            .errorPageRap .holoContainer > img:nth-child(3) {
                left: 1.2rem;
                top: 0;
                animation: glitch-anim-2 3s infinite linear alternate-reverse;
                clip: rect(0, 0, 0, 0);
            }
            .errorPageRap .holoContainer > img:nth-child(2) {
                left: .7rem;
                animation: glitch-anim-1 2s infinite linear alternate-reverse;
                width: 21rem;
            }
            .errorPageRap .holoContainer > img:nth-child(3) {
            }
            .errorPageRap .holoPad {
                position: absolute;
                bottom: -15rem;
                left: 50%;
                margin-left: -12.8rem;
                z-index: 998;
            }
            .errorPageRap .holoPad #sparks {
                opacity: .2;
                animation: twinkle 1.6s ease infinite;
                opacity: .4;
            }
            .errorPageRap .holoPad #holo_glow {
                animation: twinkle 10s 1s ease infinite;
                opacity: .7;
            }

            @keyframes twinkle {
                0% {
                    opacity: .7;
                }
                20% {
                    opacity: 1;
                }
                30% {
                    opacity: .6;
                }
                40% {
                    opacity: 1;
                }
                50% {
                    opacity: .4;
                }
                60% {
                    opacity: 1;
                }
                100% {
                    opacity: .7;
                }
            }
            @keyframes glitch-anim-1 {
                0% {
                    clip: rect(12.7rem, 2.5rem, 40rem, 0);
                }
                6% {
                    clip: rect(1.5rem, 25.8rem, 40rem, 0);
                }
                13% {
                    clip: rect(18.9rem, 25.8rem, 40rem, 0);
                }
                20% {
                    clip: rect(2.1rem, 25.8rem, 40rem, 0);
                }
                26% {
                    clip: rect(11rem, 25.8rem, 40rem, 0);
                    opacity: .3;
                }
                33% {
                    clip: rect(17.5rem, 2220rem, -40rem, 0);
                }
                40% {
                    clip: rect(14rem, 25.8rem, 40rem, 0);
                }
                46% {
                    clip: rect(2.5rem, 25.8rem, 40rem, 0);
                }
                53% {
                    clip: rect(213.9rem, 25.8rem, 40rem, 0);
                }
                60% {
                    clip: rect(12.7rem, 25.8rem, 4rem, 0);
                    opacity: .3;
                }
                66% {
                    clip: rect(25.6rem, 25.8rem, 40rem, 0);
                }
                73% {
                    clip: rect(1.1rem, 25.8rem, 40rem, 0);
                }
                80% {
                    clip: rect(13.4rem, 25.8rem, 40rem, 0);
                }
                86% {
                    clip: rect(1.7rem, 25.8rem, 40rem, 0);
                }
                93% {
                    clip: rect(17.5rem, 25.8rem, 40rem, 0);
                    opacity: .3;
                }
                100% {
                    clip: rect(16.5rem, 25.8rem, 40rem, 0);
                }
            }
            @keyframes glitch-anim-2 {
                0% {
                    clip: rect(12.7rem, 25.8rem, 40rem, 0);
                }
                6% {
                    clip: rect(15.4rem, 25.8rem, 40rem, 0);
                }
                13% {
                    clip: rect(1.8rem, 25.8rem, 40rem, 0);
                }
                20% {
                    clip: rect(13.8rem, 25.8rem, 40rem, 0);
                }
                26% {
                    clip: rect(1.1rem, 25.8rem, 28rem, 0);
                }
                33% {
                    clip: rect(3rem, 25.8rem, 40rem, 0);
                }
                40% {
                    clip: rect(1.1rem, 25.8rem, 40rem, 0);
                }
                46% {
                    clip: rect(15.2rem, 25.8rem, 40rem, 0);
                }
                53% {
                    clip: rect(13.9rem, 25.8rem, 30rem, 0);
                }
                60% {
                    clip: rect(40rem, 25.8rem, 40rem, 0);
                    opacity: .3;
                }
                66% {
                    clip: rect(15.6rem, 25.8rem, 40rem, 0);
                }
                73% {
                    clip: rect(1.1rem, 25.8rem, 40rem, 0);
                }
                80% {
                    clip: rect(1.3rem, 21.8rem, 35rem, 0);
                }
                86% {
                    clip: rect(17.3rem, 25.8rem, 40rem, 0);
                }
                93% {
                    clip: rect(17.5rem, 25.8rem, 40rem, 0);
                    opacity: .3;
                }
                100% {
                    clip: rect(16.5rem, 25.8rem, 40rem, 0);
                }
            }

        </style>
        <script>
            $(document).ready(function ()
            {
                // scale on resize
                function fontResize() {
                    var resolution = 1440;
                    var font = 10;

                    var width = $(window).width();

                    var newFont = font * (width / resolution);
                    $("html").css("font-size", newFont);
                }

                $(document).ready(function () {
                    fontResize();
                    $(window).bind("resize", function () {
                        fontResize();
                    });
                });
            })
        </script>
    </head>
    <body>
        <div class="errorPageRap">
            <div class="holoContainer">
                <img src="images2/4041.png">
                <img src="images2/4042.png">
                <img src="images2/4043.png">
                <svg class="holoPad" width="25.6rem" height="27.8rem" viewBox="0 0 226 242" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
                <defs>
                <linearGradient x1="50%" y1="100%" x2="50%" y2="0%" id="linearGradient-1">
                <stop stop-color="#F4F8FA" offset="0%"></stop>
                <stop stop-color="#A2D2E9" offset="100%"></stop>
                </linearGradient>
                <ellipse id="path-2" cx="91" cy="36.5" rx="91" ry="36.5"></ellipse>
                <filter x="-50%" y="-50%" width="200%" height="200%" filterUnits="objectBoundingBox" id="filter-3">
                    <feOffset dx="0" dy="4" in="SourceAlpha" result="shadowOffsetOuter1"></feOffset>
                    <feColorMatrix values="0 0 0 0 0.672833111   0 0 0 0 0.78061935   0 0 0 0 0.829613095  0 0 0 1 0" type="matrix" in="shadowOffsetOuter1"></feColorMatrix>
                </filter>
                <filter x="-50%" y="-50%" width="200%" height="200%" filterUnits="objectBoundingBox" id="filter-4">
                    <feOffset dx="0" dy="-1" in="SourceAlpha" result="shadowOffsetInner1"></feOffset>
                    <feComposite in="shadowOffsetInner1" in2="SourceAlpha" operator="arithmetic" k2="-1" k3="1" result="shadowInnerInner1"></feComposite>
                    <feColorMatrix values="0 0 0 0 1   0 0 0 0 1   0 0 0 0 1  0 0 0 0.5 0" type="matrix" in="shadowInnerInner1"></feColorMatrix>
                </filter>
                <ellipse id="path-5" cx="82.6398601" cy="30.7894737" rx="62.1223776" ry="19.3859649"></ellipse>
                <filter x="-50%" y="-50%" width="200%" height="200%" filterUnits="objectBoundingBox" id="filter-6">
                    <feMorphology radius="2.5" operator="dilate" in="SourceAlpha" result="shadowSpreadOuter1"></feMorphology>
                    <feOffset dx="0" dy="1" in="shadowSpreadOuter1" result="shadowOffsetOuter1"></feOffset>
                    <feGaussianBlur stdDeviation="2.5" in="shadowOffsetOuter1" result="shadowBlurOuter1"></feGaussianBlur>
                    <feColorMatrix values="0 0 0 0 1   0 0 0 0 1   0 0 0 0 1  0 0 0 0.768851902 0" type="matrix" in="shadowBlurOuter1"></feColorMatrix>
                </filter>
                <linearGradient x1="14.2258178%" y1="52.965006%" x2="86.6831166%" y2="52.9650033%" id="linearGradient-7">
                <stop stop-color="#3BE2F7" stop-opacity="0.392776268" offset="0%"></stop>
                <stop stop-color="#00F6F6" stop-opacity="0.519339536" offset="16.9423629%"></stop>
                <stop stop-color="#009DFF" stop-opacity="0.558111625" offset="36.6410236%"></stop>
                <stop stop-color="#26B0FF" stop-opacity="0.587971664" offset="51.9331952%"></stop>
                <stop stop-color="#2292DB" stop-opacity="0.617850828" offset="67.2612404%"></stop>
                <stop stop-color="#3EE5F4" stop-opacity="0.646436303" offset="81.9256218%"></stop>
                <stop stop-color="#1A95FF" stop-opacity="0.681668931" offset="100%"></stop>
                </linearGradient>
                <filter x="-50%" y="-50%" width="200%" height="200%" filterUnits="objectBoundingBox" id="filter-8">
                    <feGaussianBlur stdDeviation="9.94977679" in="SourceGraphic"></feGaussianBlur>
                </filter>
                <filter x="-50%" y="-50%" width="200%" height="200%" filterUnits="objectBoundingBox" id="filter-9">
                    <feGaussianBlur stdDeviation="1.03515625" in="SourceGraphic"></feGaussianBlur>
                </filter>
                <filter x="-50%" y="-50%" width="200%" height="200%" filterUnits="objectBoundingBox" id="filter-10">
                    <feGaussianBlur stdDeviation="1.03515625" in="SourceGraphic"></feGaussianBlur>
                </filter>
                <filter x="-50%" y="-50%" width="200%" height="200%" filterUnits="objectBoundingBox" id="filter-11">
                    <feGaussianBlur stdDeviation="1.03515625" in="SourceGraphic"></feGaussianBlur>
                </filter>
                <filter x="-50%" y="-50%" width="200%" height="200%" filterUnits="objectBoundingBox" id="filter-12">
                    <feGaussianBlur stdDeviation="1.03515625" in="SourceGraphic"></feGaussianBlur>
                </filter>
                <filter x="-50%" y="-50%" width="200%" height="200%" filterUnits="objectBoundingBox" id="filter-13">
                    <feGaussianBlur stdDeviation="1.03515625" in="SourceGraphic"></feGaussianBlur>
                </filter>
                <filter x="-50%" y="-50%" width="200%" height="200%" filterUnits="objectBoundingBox" id="filter-14">
                    <feGaussianBlur stdDeviation="1.03515625" in="SourceGraphic"></feGaussianBlur>
                </filter>
                <filter x="-50%" y="-50%" width="200%" height="200%" filterUnits="objectBoundingBox" id="filter-15">
                    <feGaussianBlur stdDeviation="1.03515625" in="SourceGraphic"></feGaussianBlur>
                </filter>
                <filter x="-50%" y="-50%" width="200%" height="200%" filterUnits="objectBoundingBox" id="filter-16">
                    <feGaussianBlur stdDeviation="1.03515625" in="SourceGraphic"></feGaussianBlur>
                </filter>
                <filter x="-50%" y="-50%" width="200%" height="200%" filterUnits="objectBoundingBox" id="filter-17">
                    <feGaussianBlur stdDeviation="1.03515625" in="SourceGraphic"></feGaussianBlur>
                </filter>
                <filter x="-50%" y="-50%" width="200%" height="200%" filterUnits="objectBoundingBox" id="filter-18">
                    <feGaussianBlur stdDeviation="1.03515625" in="SourceGraphic"></feGaussianBlur>
                </filter>
                <filter x="-50%" y="-50%" width="200%" height="200%" filterUnits="objectBoundingBox" id="filter-19">
                    <feGaussianBlur stdDeviation="1.03515625" in="SourceGraphic"></feGaussianBlur>
                </filter>
                <filter x="-50%" y="-50%" width="200%" height="200%" filterUnits="objectBoundingBox" id="filter-20">
                    <feGaussianBlur stdDeviation="1.03515625" in="SourceGraphic"></feGaussianBlur>
                </filter>
                <filter x="-50%" y="-50%" width="200%" height="200%" filterUnits="objectBoundingBox" id="filter-21">
                    <feGaussianBlur stdDeviation="1.03515625" in="SourceGraphic"></feGaussianBlur>
                </filter>
                <filter x="-50%" y="-50%" width="200%" height="200%" filterUnits="objectBoundingBox" id="filter-22">
                    <feGaussianBlur stdDeviation="1.03515625" in="SourceGraphic"></feGaussianBlur>
                </filter>
                <filter x="-50%" y="-50%" width="200%" height="200%" filterUnits="objectBoundingBox" id="filter-23">
                    <feGaussianBlur stdDeviation="1.03515625" in="SourceGraphic"></feGaussianBlur>
                </filter>
                <filter x="-50%" y="-50%" width="200%" height="200%" filterUnits="objectBoundingBox" id="filter-24">
                    <feGaussianBlur stdDeviation="1.03515625" in="SourceGraphic"></feGaussianBlur>
                </filter>
                <filter x="-50%" y="-50%" width="200%" height="200%" filterUnits="objectBoundingBox" id="filter-25">
                    <feGaussianBlur stdDeviation="1.03515625" in="SourceGraphic"></feGaussianBlur>
                </filter>
                <filter x="-50%" y="-50%" width="200%" height="200%" filterUnits="objectBoundingBox" id="filter-26">
                    <feGaussianBlur stdDeviation="1.03515625" in="SourceGraphic"></feGaussianBlur>
                </filter>
                <filter x="-50%" y="-50%" width="200%" height="200%" filterUnits="objectBoundingBox" id="filter-27">
                    <feGaussianBlur stdDeviation="1.03515625" in="SourceGraphic"></feGaussianBlur>
                </filter>
                <filter x="-50%" y="-50%" width="200%" height="200%" filterUnits="objectBoundingBox" id="filter-28">
                    <feGaussianBlur stdDeviation="1.03515625" in="SourceGraphic"></feGaussianBlur>
                </filter>
                <filter x="-50%" y="-50%" width="200%" height="200%" filterUnits="objectBoundingBox" id="filter-29">
                    <feGaussianBlur stdDeviation="1.03515625" in="SourceGraphic"></feGaussianBlur>
                </filter>
                <filter x="-50%" y="-50%" width="200%" height="200%" filterUnits="objectBoundingBox" id="filter-30">
                    <feGaussianBlur stdDeviation="1.03515625" in="SourceGraphic"></feGaussianBlur>
                </filter>
                <filter x="-50%" y="-50%" width="200%" height="200%" filterUnits="objectBoundingBox" id="filter-31">
                    <feGaussianBlur stdDeviation="1.03515625" in="SourceGraphic"></feGaussianBlur>
                </filter>
                <filter x="-50%" y="-50%" width="200%" height="200%" filterUnits="objectBoundingBox" id="filter-32">
                    <feGaussianBlur stdDeviation="1.03515625" in="SourceGraphic"></feGaussianBlur>
                </filter>
                <filter x="-50%" y="-50%" width="200%" height="200%" filterUnits="objectBoundingBox" id="filter-33">
                    <feGaussianBlur stdDeviation="1.03515625" in="SourceGraphic"></feGaussianBlur>
                </filter>
                <filter x="-50%" y="-50%" width="200%" height="200%" filterUnits="objectBoundingBox" id="filter-34">
                    <feGaussianBlur stdDeviation="1.03515625" in="SourceGraphic"></feGaussianBlur>
                </filter>
                <filter x="-50%" y="-50%" width="200%" height="200%" filterUnits="objectBoundingBox" id="filter-35">
                    <feGaussianBlur stdDeviation="1.03515625" in="SourceGraphic"></feGaussianBlur>
                </filter>
                <filter x="-50%" y="-50%" width="200%" height="200%" filterUnits="objectBoundingBox" id="filter-36">
                    <feGaussianBlur stdDeviation="1.03515625" in="SourceGraphic"></feGaussianBlur>
                </filter>
                <filter x="-50%" y="-50%" width="200%" height="200%" filterUnits="objectBoundingBox" id="filter-37">
                    <feGaussianBlur stdDeviation="1.03515625" in="SourceGraphic"></feGaussianBlur>
                </filter>
                <filter x="-50%" y="-50%" width="200%" height="200%" filterUnits="objectBoundingBox" id="filter-38">
                    <feGaussianBlur stdDeviation="1.03515625" in="SourceGraphic"></feGaussianBlur>
                </filter>
                <filter x="-50%" y="-50%" width="200%" height="200%" filterUnits="objectBoundingBox" id="filter-39">
                    <feGaussianBlur stdDeviation="1.03515625" in="SourceGraphic"></feGaussianBlur>
                </filter>
                <filter x="-50%" y="-50%" width="200%" height="200%" filterUnits="objectBoundingBox" id="filter-40">
                    <feGaussianBlur stdDeviation="1.03515625" in="SourceGraphic"></feGaussianBlur>
                </filter>
                <filter x="-50%" y="-50%" width="200%" height="200%" filterUnits="objectBoundingBox" id="filter-41">
                    <feGaussianBlur stdDeviation="1.03515625" in="SourceGraphic"></feGaussianBlur>
                </filter>
                <filter x="-50%" y="-50%" width="200%" height="200%" filterUnits="objectBoundingBox" id="filter-42">
                    <feGaussianBlur stdDeviation="1.03515625" in="SourceGraphic"></feGaussianBlur>
                </filter>
                </defs>
                <g id="Page-1" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                <g id="Desktop-HD" transform="translate(-479.000000, -302.000000)">
                <g id="holo_pad" transform="translate(498.000000, 324.000000)">
                <g id="base" transform="translate(0.000000, 141.000000)">
                <g id="holo_lens_cover">
                <use fill="black" fill-opacity="1" filter="url(#filter-3)" xlink:href="#path-2"></use>
                <use fill="url(#linearGradient-1)" fill-rule="evenodd" xlink:href="#path-2"></use>
                <use fill="black" fill-opacity="1" filter="url(#filter-4)" xlink:href="#path-2"></use>
                </g>
                <g id="holo_ring_lense" transform="translate(9.000000, 3.000000)">
                <ellipse id="Oval-2" fill="#9DB2AF" cx="82.6398601" cy="28.5087719" rx="62.1223776" ry="22.8070175"></ellipse>
                <g id="Oval-2">
                <use fill="black" fill-opacity="1" filter="url(#filter-6)" xlink:href="#path-5"></use>
                <use fill="#D3F9FD" fill-rule="evenodd" xlink:href="#path-5"></use>
                </g>
                <path d="M82.308352,51.3070258 C120.616223,51.2889123 142.57421,39.650037 144.762238,34.7807018 C148.163881,27.210531 141.856773,22.7946167 133.083886,19.3859649 C121.938655,15.0555531 101.372497,16.2297437 85.4895105,16.2297437 C52.7540871,16.2297437 24.2799659,32.8039558 28.0392175,39.650037 C29.494342,42.300006 44.0004813,51.3251393 82.308352,51.3070258 Z" id="Oval-2" fill="#85F4FF"></path>
                <g id="bolts" fill="#AABCC5">
                <ellipse id="Oval-7" cx="82.0699301" cy="62.7192982" rx="4.55944056" ry="2.28070175"></ellipse>
                <ellipse id="Oval-8" cx="132.223776" cy="53.0263158" rx="4.55944056" ry="1.71052632"></ellipse>
                <ellipse id="Oval-9" cx="156.730769" cy="41.622807" rx="3.98951049" ry="1.71052632"></ellipse>
                <ellipse id="Oval-10" cx="160.15035" cy="25.0877193" rx="2.84965035" ry="1.14035088"></ellipse>
                <ellipse id="Oval-11" cx="147.041958" cy="13.6842105" rx="2.27972028" ry="1.14035088"></ellipse>
                <ellipse id="Oval-12" cx="103.157343" cy="0.570175439" rx="1.70979021" ry="0.570175439"></ellipse>
                <ellipse id="Oval-13" cx="39.8951049" cy="4.56140351" rx="2.27972028" ry="1.14035088"></ellipse>
                <ellipse id="Oval-6" cx="28.4965035" cy="54.1666667" rx="4.55944056" ry="1.71052632"></ellipse>
                <ellipse id="Oval-5" cx="4.55944056" cy="38.2017544" rx="4.55944056" ry="1.71052632"></ellipse>
                <ellipse id="Oval-3" cx="16.527972" cy="13.6842105" rx="2.84965035" ry="1.14035088"></ellipse>
                <ellipse id="Oval-4" cx="4.55944056" cy="23.377193" rx="3.41958042" ry="1.71052632"></ellipse>
                </g>
                </g>
                </g>
                <path d="M2.72749126,7.0974908 C2.02976525,2.73245828 5.01735668,-0.356276457 9.39575877,0.198013072 L178.122782,21.5582309 C182.50329,22.1127871 185.330836,26.077111 184.442533,30.3921522 L154.103095,177.769567 L150.783521,180.676785 C147.458001,183.58921 141.33267,186.994178 137.094749,188.213507 C137.094749,188.213507 112.445163,196.265581 92.5275028,196.02072 C72.6098428,195.775859 52.5096264,192.670969 42.8688096,187.508781 C33.2279929,182.346593 30.0084669,177.769567 30.0084669,177.769567 L2.72749126,7.0974908 Z" id="holo_glow" fill="url(#linearGradient-7)" opacity="0.648890399" filter="url(#filter-8)"></path>
                <g id="sparks" transform="translate(21.000000, 64.000000)" fill="#FFFFFF">
                <circle id="Oval-14" filter="url(#filter-9)" cx="104" cy="111" r="2"></circle>
                <circle id="Oval-14" filter="url(#filter-10)" cx="104" cy="111" r="2"></circle>
                <circle id="Oval-14" filter="url(#filter-11)" cx="96.5" cy="114.5" r="1.5"></circle>
                <circle id="Oval-14" filter="url(#filter-12)" cx="76.5" cy="119.5" r="1.5"></circle>
                <circle id="Oval-14" filter="url(#filter-13)" cx="63" cy="98" r="2"></circle>
                <circle id="Oval-14" filter="url(#filter-14)" cx="72.5" cy="102.5" r="1.5"></circle>
                <circle id="Oval-14" filter="url(#filter-15)" cx="92.5" cy="99.5" r="1.5"></circle>
                <circle id="Oval-14" filter="url(#filter-16)" cx="100" cy="91" r="1"></circle>
                <circle id="Oval-14" filter="url(#filter-17)" cx="96.5" cy="81.5" r="1.5"></circle>
                <circle id="Oval-14" filter="url(#filter-18)" cx="106.5" cy="73.5" r="1.5"></circle>
                <circle id="Oval-14" filter="url(#filter-19)" cx="100.5" cy="54.5" r="1.5"></circle>
                <circle id="Oval-14" filter="url(#filter-20)" cx="82" cy="52" r="1"></circle>
                <circle id="Oval-14" filter="url(#filter-21)" cx="123" cy="56" r="1"></circle>
                <circle id="Oval-14" filter="url(#filter-22)" cx="121.5" cy="64.5" r="1.5"></circle>
                <circle id="Oval-14" filter="url(#filter-23)" cx="143" cy="74" r="2"></circle>
                <circle id="Oval-14" filter="url(#filter-24)" cx="150" cy="51" r="2"></circle>
                <circle id="Oval-14" filter="url(#filter-25)" cx="142.5" cy="26.5" r="1.5"></circle>
                <circle id="Oval-14" filter="url(#filter-26)" cx="154.5" cy="18.5" r="1.5"></circle>
                <circle id="Oval-14" filter="url(#filter-27)" cx="54" cy="58" r="2"></circle>
                <circle id="Oval-14" filter="url(#filter-28)" cx="49" cy="49" r="1"></circle>
                <path d="M41.5,80 C42.3284271,80 43,79.3284271 43,78.5 C43,77.6715729 42.3284271,77 41.5,77 C40.6715729,77 40,77.6715729 40,78.5 C40,79.3284271 40.6715729,80 41.5,80 Z" id="Oval-14" filter="url(#filter-29)"></path>
                <circle id="Oval-14" filter="url(#filter-30)" cx="38.5" cy="84.5" r="1.5"></circle>
                <circle id="Oval-14" filter="url(#filter-31)" cx="38.5" cy="79.5" r="1.5"></circle>
                <circle id="Oval-14" filter="url(#filter-32)" cx="34.5" cy="77.5" r="1.5"></circle>
                <circle id="Oval-14" filter="url(#filter-33)" cx="32" cy="97" r="2"></circle>
                <circle id="Oval-14" filter="url(#filter-34)" cx="29" cy="105" r="2"></circle>
                <circle id="Oval-14" filter="url(#filter-35)" cx="23" cy="87" r="2"></circle>
                <circle id="Oval-14" filter="url(#filter-36)" cx="14" cy="62" r="2"></circle>
                <circle id="Oval-14" filter="url(#filter-37)" cx="25" cy="52" r="2"></circle>
                <circle id="Oval-14" filter="url(#filter-38)" cx="29" cy="29" r="1"></circle>
                <circle id="Oval-14" filter="url(#filter-39)" cx="2" cy="14" r="2"></circle>
                <circle id="Oval-14" filter="url(#filter-40)" cx="20" cy="26" r="1"></circle>
                <circle id="Oval-14" filter="url(#filter-41)" cx="26" cy="21" r="1"></circle>
                <circle id="Oval-14" filter="url(#filter-42)" cx="65" cy="2" r="2"></circle>
                </g>
                </g>
                </g>
                </g>
                </svg>
            </div>
            <h1>
                Bạn không có quyền truy cập trang Admin... <span><img src="images2/sadFace.png"></span>
                <br>
                Nếu bạn là Admin của website, hãy trở lại trang đăng nhập,<a href="login.jsp">Đăng Nhập</a>
            </h1>
        </div>
    </body>
</html>
