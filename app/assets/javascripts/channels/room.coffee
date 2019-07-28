document.addEventListener 'turbolinks:load', ->
path = window.location.pathname.split('/')
room_id = path[path.length - 1]
App.room = App.cable.subscriptions.create { channel: "RoomChannel", room_id: room_id },
  connected: ->

  disconnected: ->

# room_channel.rbでブロードキャストされたものがここに届く
  received: (data) ->
    $('#messages').prepend data['message']

# これが実行されるとコンシューマになったRoomChannelのspeakアクションが引数`{ message: message }`で実行される
  speak: (message) ->
   @perform 'speak', message: message

  # data-behaviorがroom_speakerである場所で...
  $(document).on 'keypress', '[data-behavior~=room_speaker]', (event) ->

    # keyCodeが13のキー(エンターキー)を押した時...
    if event.keyCode is 13 # return = send

      # これまでアラートで確認していたようなものがここで実行される
      App.room.speak event.target.value

      # フォームの中身を空にする
      event.target.value = ''
      event.preventDefault()
