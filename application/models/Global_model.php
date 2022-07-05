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

    public function insert($table, $data = array())
    {
    }

    /**
     * Update function
     * 
     * Generate sql query and running the query
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
}

/* End of file Global_model.php */
