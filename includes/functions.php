<?php
    // include the file we just wrote - connect
     // like a JS import statement

    $result = array();

    function getAllThings($conn) {
        $query = "SELECT * FROM tbl_favthings";

        $runQuery = $conn->query($query);

        while($row = $runQuery->fetchAll(PDO::FETCH_ASSOC)) {
            $result[] = $row;
        }

        //return $result;
        echo (json_encode($result));
    }

    function getSingleThing($conn, $id) {
        $query = "SELECT * FROM tbl_favthings WHERE ID=" . $id . "";

        $runQuery = $conn->query($query);

        while($row = $runQuery->fetchAll(PDO::FETCH_ASSOC)) {
            $result[] = $row;
        }

        //return $result;
        echo (json_encode($result));
    }