<style>
*{
	margin: 0;
	padding: 0;
	font-family: Verdana, Geneva, Tahoma, sans-serif;
	outline: 0;
}

html{
	width: 100svw;
	height: 100svh;
}
.center{
	display: flex;
	justify-content: center;
	align-items: center;
}

.even{justify-content: space-around;}
.end{justify-content: flex-end;}
.start{justify-content: flex-start;}
.fd-col{flex-direction: column;}

.wh-full{
	width: 100svw;
	height: 100%;
}

.w-full{width: 100%;}
.mt2{margin-top: 2.5%;}
.mt5{margin-top: 5%;}
.w-40{width: 40%;}
.w-80{width: 80%;}
.bb1{border-bottom: 1px solid black}
.ml-auto{margin-left: auto;}
.text-center{text-align: center;}
.font-lg{font-size: 1.5rem}

.input{
	margin: .5rem;
	padding: .5rem;
	width: 30%;
}
.btn{
	padding: .5rem 2rem;
	border-radius: 7px;
	background-color: Salmon;
	margin: 2rem;
	font-size: 1rem;
	color: black;
	text-decoration: none;
}
.nav-link{
	padding: .5rem 1rem;
	margin: .5rem 2rem;
	text-decoration: none;
	color: white;
	border-radius: 10px;
	background-color: #990011;
}
.nav-link:hover, .logo:hover{
	background-color: #FCF6F5;
	color:black;
	}
.link-hover:hover{
	background-color: transparent;
	color: blue;
}

 .input:focus, .input:hover{
 	border: 2px solid black;
 	border-radius: 3px;
	box-shadow: 2px 2px 0px black;
 }
 .btn:hover{box-shadow: 2px 2px 0px gray;}
 
 .logo{
 	padding: .3rem .2rem;
	margin: .2rem 1rem;
	text-decoration: none;
	color: black;
	border-radius: 4px;
	border-left: 5px double #2f3136;
 }
 
 .bg1{
 	background-color: #565656;
 	cellpadding:.5rem;
 	cellspacing:0;
 	color: #fff;
 }
 .p1{
 	padding: .3rem 1rem;
 }
 
 
</style>