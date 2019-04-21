def send(line_ids, message)

   @user=User.offset( rand(User.count) ).first
# Postからランダムで返事を選ぶ。


    post('/v1/events', {

            to: line_ids,
            content: {
                contentType: ContentType::TEXT,
                toType: ToType::USER,
                text: @user.name #返事をPostから取ってくる。
            },

            toChannel: TO_CHANNEL,
            eventType: EVENT_TYPE,



        })
