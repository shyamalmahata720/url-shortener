<style>

.table-container{
	height: 80vh;
	display: flex;
	align-items: center;
	justify-content: center;
	flex-direction: column;
}

.back-container {
	display: flex;
	justify-content: flex-end;
}

.back {
	margin-right: 10px;
	display: flex;
	align-items: center;
	justify-content: center;
}

.btn {
	height: 2.5rem;
	width: 70px;
	border-radius: 10px;
	background-color: #fd7e14;
	border: none;
	color: #fff;
	font-weight: 600;
	margin-top: 10px;
	padding: 5px;
	box-sizing: border-box;
}

.btn:hover {
	color: #ff0000; /* Change color on hover */
    background-color: #64d8cb;
	cursor: pointer;
}

.table {
	height: 80vh;
	width: 80vw;
	border: 1px solid #64d8cb;
	display: flex;
	flex-direction: column;
	column-gap: 15px;
	box-shadow: 0 0 20px 5px #888888;
	gap: 5px;
	border-radius: 15px;
	
}


.tr,.th {
	border: 2px solid #64d8cb;
	display: flex;
	justify-content: space-around;
	align-items: center;
	height: 50px;
	column-gap: 10px;	
	text-align: center;
	border-radius: 15px;
	margin-bottom: 5px;
}

.tr td,th {
 text-align: center;
}



</style>