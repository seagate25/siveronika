<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Global_model extends CI_Model
{
    /**
     * Declare $query variable
     * 
     * This variable is set for query string
     *
     * @var String
     */
    protected $query;

    public function __construct()
    {
        parent::__construct();
        $this->query = "";
    }

    /**
     * Insert Function
     * 
     * Generate sql query and execute query
     * This function is different with insert_batch
     * Can only execute one insert, not multiple
     *
     * @param String $table
     * @param array $data
     * @return void
     */
    public function insert($table, $data = array())
    {
        $this->query    = "";
        $column         = "";
        $value          = "";
        $this->query   .= "INSERT INTO {$table} ";

        $i  = 0;
        foreach ($data as $key => $val) {
            $column .= "{$key}";
            $value  .= ($val !== '') ? "'{$val}'" : "NULL";

            if ($i === (count($data) - 1)) {
                $column .= "";
                $value  .= "";
            } else {
                $column .= ", ";
                $value  .= ", ";
            }

            $i++;
        }

        $this->query    .= "(" . $column . ") VALUES (" . $value . ")";

        return $this->db->query($this->query);
    }

    /**
     * Update function
     * 
     * Generate sql query and execute the query
     * This update function is different with update_batch
     * Only once execute update
     *
     * @param array $params
     * @param array $data
     * @return void
     */
    public function update($table, $params = array(), $data = array())
    {
        $this->query    = "";
        $this->query   .= "UPDATE {$table} SET ";

        $i  = 0;
        foreach ($data as $key => $value) {
            if ($value !== 'NULL') {
                $this->query    .= "{$key} = '{$value}'";
            } else {
                $this->query    .= "{$key} = NULL";
            }

            if ($i === (count($data) - 1)) {
                $this->query    .= " ";
            } else {
                $this->query    .= ", ";
            }

            $i++;
        }

        $this->query .= " WHERE ";

        foreach ($params as $key => $value) {
            $this->query .= "{$key} = '{$value}'";
            if (!next($params)) {
                $this->query .= " ";
            } else {
                $this->query .= " AND ";
            }
        }

        return $this->db->query($this->query);
    }

    /**
     * Insert Batch Function
     * 
     * This function is generate sql query and execute
     * for multiple insert rows
     *
     * @param String $table
     * @param array $data
     * @return void
     */
    public function insert_batch($table, $data = array())
    {
        $this->query    = "";
        $this->query   .= "INSERT INTO {$table} VALUES ";
        $values         = "";

        $i  = 0;
        foreach ($data as $row) {

            $j  = 0;
            $values .= "(";
            foreach ($row as $val) {
                $values .= ($val !== 'NULL') ? "'{$val}'" : "NULL";
                $values .= ($j === (count($row) - 1)) ? "" : ", ";
                $j++;
            }
            $values .= ")";

            $values .= ($i === (count($data) - 1)) ? "" : ", ";
            $i++;
        }

        $this->query    .= $values;

        return $this->db->query($this->query);
    }

    /**
     * Get All Function
     * 
     * Get All data from database with Select * query
     *
     * @param String $table
     * @param String $order_column
     * @param String $order_dir
     * @return void
     */
    public function get_all($table, $order_column = NULL, $order_dir = NULL)
    {
        $this->query    = "";
        $order          = "";

        if ($order_column !== NULL) {
            $order  .= " ORDER BY {$order_column}";
            $order  .= ($order_dir !== NULL) ? " {$order_dir}" : " ASC";
        }

        $this->query    .= "SELECT * FROM {$table}{$order}";

        return $this->db->query($this->query);
    }

    /**
     * Get By Function
     * 
     * Get data from database with Select * query
     * and some parameter
     *
     * @param String $table
     * @param array $params
     * @return void
     */
    public function get_by($table, $params = array())
    {
        $this->query    = "";
        $where          = "";
        foreach ($params as $key => $value) {
            $where  .= ($value !== 'NULL') ? "{$key} = '{$value}'" : "{$key} IS NULL";
            $where  .= (!next($params)) ? "" : " AND ";
        }

        $this->query    .= "SELECT * FROM {$table} WHERE {$where}";

        return $this->db->query($this->query);
    }
}

/* End of file Global_model.php */
