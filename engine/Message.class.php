<?php
    class Message{
        function webhook(){
            $challenge = $_REQUEST['hub_challenge'];
            $verify_token = $_REQUEST['hub_verify_token'];
            // Set this Verify Token Value on your Facebook App 
            if ($verify_token === 'testtoken') {
              echo $challenge;
            }
            $input = json_decode(file_get_contents('php://input'), true);
            // Get the Senders Graph ID
            $sender = $input['entry'][0]['messaging'][0]['sender']['id'];
            // Get the returned message
            $message = $input['entry'][0]['messaging'][0]['message']['text'];
        }
        function send($user,$msg){
            $url = 'https://graph.facebook.com/v2.6/me/messages?access_token=EAAC5Gz4U7H8BABxegXV0giVZAHYJIx2Almp2TqXgeODExbFDkuuGmHz3SvlrfjSck9ZBsWgnjSXZBNV2Y4ggHqKNnryatG08yXnSnSSaqm9A7lhfMzdn5UQZAVWWbmZC5hbZBkekXiATCcKVeFZANWmIQ9pe0YrESvJ365xzL7t6ZBbjBln8clV3';
            //Initiate cURL.
            $ch = curl_init($url);
            //The JSON data.
            $jsonData = '{
                "recipient":{
                    "id":"' . $user . '"
                }, 
                "message":{
                    "text":"'.$msg.'"
                }
            }';
            //Tell cURL that we want to send a POST request.
            curl_setopt($ch, CURLOPT_POST, 1);
            //Attach our encoded JSON string to the POST fields.
            curl_setopt($ch, CURLOPT_POSTFIELDS, $jsonData);
            //Set the content type to application/json
            curl_setopt($ch, CURLOPT_HTTPHEADER, array('Content-Type: application/json'));
            //Execute the request but first check if the message is not empty.
            if(!empty($input['entry'][0]['messaging'][0]['message'])){
              $result = curl_exec($ch);
            }
        }
        //calbacks
    }
