# FCM_SEVER_KEY = "AAAAvc7uZ-s:APA91bGn0VR5gKNLSz9LcKhkHv1JB_p8sGPlVII63yZd0qTjRwenddQdUYA8XvKD1zObcgGyLqqAMUU4c6UZgGLaUvglK5FFKLGMge8LnQrjNDemscmkaYG4rR3YskwEN6cePPzb_L_i"
#   include HTTParty

# namespace :user do
#     namespace :seed do
#         task :create_users => :environment do
#             while true 
#             User.all.each do |user|
#                 if user.id == 33
#                     puts 'Yes'
#                     response = HTTParty.post('https://fcm.googleapis.com/fcm/send',
#                         headers: { 'Content-Type' => 'application/json'  ,
#                              'Authorization' => 'key=AAAAvc7uZ-s:APA91bGn0VR5gKNLSz9LcKhkHv1JB_p8sGPlVII63yZd0qTjRwenddQdUYA8XvKD1zObcgGyLqqAMUU4c6UZgGLaUvglK5FFKLGMge8LnQrjNDemscmkaYG4rR3YskwEN6cePPzb_L_i'},
#                              body:{
#                                 "to"  => "/topics/ahmed",
#                                 "notification"  => {
#                                     "title"  => "#{user.username}",
#                                     "body"  => "body2",
#                                     "sound"  => "default"
#                                 },
#                                 "android"  => {
#                                     "priority"  => "HIGH",
#                                     "notification"  => {
#                                         "notification_priority" => "PRIORITY_MAX",
#                                         "sound"  => "default",
#                                         "default_sound"  => true,
#                                         "default_vibrate_timings"  => true,
#                                         "default_light_timings"  => true
#                                     }
#                                 }
#                             }.to_json)
#                     #  parsed_response = JSON.parse(response&.body)
#                     # rescue JSON::ParserError, TypeError => e
#                     #     puts e
#                 end
#             end
#             sleep(1.minutes)
#         end
#         end
#     end
    
# end

  
# response = HTTParty.post('https://athlete-events-api.herokuapp.com/api/v1/events',
#     headers: { 'Content-Type' => 'application/json'  , 'Authorization' => 'Bearer eyJhbGciOiJIUzI1NiJ9.eyJhZG1pbl9pZCI6MX0.D9LclfnZepjcFsXI6pkGsPavAxG2hgZz_9ehRspRM_8'},
#     body: {"admin_id" =>" 1"
#         "title"=> "Test from rails",
#         "date"=> "2021-10-11"}.to_json)




namespace :user do
    namespace :seed do
        task :create_users => :environment do
            
            User.all.each do |user|
                if user.id == 56
                    puts 'Yes'
                    response = HTTParty.post('https://fcm.googleapis.com/fcm/send',
                        headers: { 'Content-Type' => 'application/json'  ,
                             'Authorization' => 'key=AAAAvc7uZ-s:APA91bGn0VR5gKNLSz9LcKhkHv1JB_p8sGPlVII63yZd0qTjRwenddQdUYA8XvKD1zObcgGyLqqAMUU4c6UZgGLaUvglK5FFKLGMge8LnQrjNDemscmkaYG4rR3YskwEN6cePPzb_L_i'},
                             body:{
                                "to"  => "/topics/ahmed",
                                "notification"  => {
                                    "title"  => "#{user.username}",
                                    "body"  => "body2",
                                    "sound"  => "default"
                                },
                                "android"  => {
                                    "priority"  => "HIGH",
                                    "notification"  => {
                                        "notification_priority" => "PRIORITY_MAX",
                                        "sound"  => "default",
                                        "default_sound"  => true,
                                        "default_vibrate_timings"  => true,
                                        "default_light_timings"  => true
                                    }
                                }
                            }.to_json)
                    #  parsed_response = JSON.parse(response&.body)
                    # rescue JSON::ParserError, TypeError => e
                    #     puts e
                end
            end
     
        end
    end
    
end