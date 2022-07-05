<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Global_model extends CI_Model
{
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * Update function
     * 
     * Generate sql query and running the query
     *
     * @param array $params
     * @param array $data
     * @return void
     */
    public function update($params = array(), $data = array())
    {
    }
}

/* End of file Global_model.php */
