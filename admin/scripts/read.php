<?php 

function getAll($tbl){
	include('connect.php');

	//TODO: fill the following variable with a SQL query
	// that fetching all info from the given table $tbl
	$queryAll = 'SELECT * FROM '.$tbl;

	$runAll = $pdo->query($queryAll);

	if($runAll){
		return $runAll;
	}else{
		$error = 'There was a problem accessing this info';
		return $error;
	}
}

function getSingle($tbl, $col, $value) {
	include('connect.php');
	$querySingle = 'SELECT * FROM '.$tbl.' WHERE '.$col.' = '.$value;

	$runSingle = $pdo->query($querySingle);
	if($runSingle){
		return $runSingle;
	}else{
		$error = 'There was a problem';
		return $error;
	}
}

function filterResults($tbl, $tbl_2, $tbl_3, $col, $col2, $col3, $filter) {
	include('connect.php');
	$queryFilter = 'SELECT * FROM '.$tbl. ' as a, ';
	$queryFilter.= $tbl_2. ' as b, ';
	$queryFilter.= $tbl_3. ' as c ';
	$queryFilter.= 'WHERE a. ' .$col. ' = c. ' .$col;
	$queryFilter.= ' AND b. ' .$col2. ' = c. ' .$col2;
	$queryFilter.= ' AND b. ' .$col3. '= "' . $filter.'"';
	$runFilter = $pdo->query($queryFilter);
	if($runFilter){
		return $runFilter;
	}else{
		$error = 'There was a problem';
		return $error;
	}
}
