<?php

/**
 * @requires extension mysqli
 */
class AddAddressTest extends PHPUnit_Framework_TestCase {

	/**
	 * @dataProvider provider
	 */
	public function testAddAddress() {
		echo 'add address -> ';
		$args = func_get_args();
		$test_params = array();
		$test_params['app_id'] = $args[1];
		$test_params['app_version'] = $args[2];
		$test_params['phone'] = $args[3];
		$test_params['nick'] = $args[4];
		$test_params['address'] = $args[5];
		$test_params['latitude'] = $args[7];
		$test_params['longitude'] = $args[6];
		$query_api_params = json_encode($test_params);
		$resp_data = curl_api(array(
			'action' => 'add_address',
			'request' => time(),
			'param' => $query_api_params
		));
        $this->assertArrayHasKey('return', $resp_data);
        $this->assertInternalType('int', $resp_data['return']);
        $this->assertArrayHasKey('address_id', $resp_data);
        $this->assertInternalType('int', $resp_data['address_id']);
        $this->assertGreaterThanOrEqual(1, $resp_data['address_id']);
	}

	/**
	 * provider 需要返回一个数组, 访问权限必须是public
	 */
	public function provider() {
		return array(
			array(TEST_USER, 104, '2.0.0', 15810457576, 'zhaobao', 'address'.time(), 116.417267, 40.031937),
		);
	}
}