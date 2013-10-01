<?php 
class Message{
	private $submit_errors;
	private $submit_confirmations;

	function __construct(){
		$this->submit_errors = array();
		$this->submit_confirmations = array();
	}

	public function add_error($error) {

		if(is_array($error))
			array_push($this->submit_errors,$error);
		else
			$this->submit_errors[] = $error;
	}

	public function add_confirmation($confirmation) {

		if(is_array($confirmation))
			array_push($this->submit_confirmations,$confirmation);
		else
			$this->submit_confirmations[] = $confirmation;
	}

	public function display_errors($error_title = null, $return = false, $clean_errors = true){
		if (count($this->submit_errors) === 0) return;

		$output = '<div class="error message">';
		foreach ($this->submit_errors as $error){
			$output .= $error.'<br/>';
		}
		$output .= "</div>";

		//Clean Errors
		if($clean_errors) {
			$this->clean_errors();
		}

		if($return) {
			return $output;
		} else {
			echo $output;
			return 1;
		}
	}

	private function clean_errors(){
		$this->submit_errors = NULL;
	}

	public function display_confirmations($confirmation_title = null, $return = false, $clean_confirmations = true){
		if (count($this->submit_confirmations) === 0) return;

		$output = '<div class="confirmation message">';
		foreach ($this->submit_confirmations as $confirmation){
			$output .= $confirmation.'<br/>';
		}
		$output .= "</div>";

		//Clean Errors
		if($clean_confirmations) {
			$this->clean_confirmations();
		}

		if($return) {
			return $output;
		} else {
			echo $output;
			return 1;
		}
	}

	private function clean_confirmations(){
		$this->submit_confirmations = NULL;
	}

}

$msg_obj = new Message();
?>