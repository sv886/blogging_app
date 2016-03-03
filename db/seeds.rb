if Post.all.blank?
  Post.create title: "Vehicle", body: "Dodge Ram Pickup, $25K", post_id: 1
  Post.create title: "Mattress", body: "Serta King Size, $2K", post_id: 2
  Post.create title: "House", body: "3BR 2 Bath, $180K", post_id: 3
  Post.create title: "Check in the mail", body: "Straight cash homey $2K", post_id: 4
end
