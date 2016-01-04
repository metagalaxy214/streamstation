class PlayersController < ApplicationController

  ## 
  def song1 
     ip_add = request.remote_ip
     @is_liked = Like.where(ip_address: ip_add, song_id: 1).present?
  end

  def song2
    ip_add = request.remote_ip
    @is_liked = Like.where(ip_address: ip_add, song_id: 2).present?
  end

  def song3    
    ip_add = request.remote_ip
    @is_liked = Like.where(ip_address: ip_add, song_id: 3).present?
  end

  def song_all
  end      
  
  def like
    song_id = params[:song_id]
    # ip_add = request.env['HTTP_X_FORWARDED_FOR']
    ip_add = request.remote_ip
    # puts request.env  #debug
    # puts request.remote_ip #debug
    cur_like = Like.where(ip_address: ip_add, song_id: song_id).first
    if cur_like.present?
      cur_like.update(is_active: true)
    else
      Like.create(ip_address: ip_add, song_id: song_id, is_active: true)
    end
    render nothing: true
  end

  def unlike
    song_id = params[:song_id]
    ip_add = request.env['HTTP_X_FORWARDED_FOR']
    cur_like = Like.where(ip_address: ip_add, song_id: song_id).first
    if cur_like.present?
      cur_like.update(is_active: false)
    else
      Like.create(ip_address: ip_add, song_id: song_id, is_active: false)
    end
    render nothing: true
  end

  def dashboard
    @likes = Like.all
  end

end
