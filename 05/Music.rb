class MusicAvi
	def play
		puts ".avi格式的视频文件已经添加到列表中"
	end
end
class Music3gp
	def play
		puts ".3gp格式的视频可以播放"
	end
end
class MusicRmv
	def play
		puts ".rmv格式的视频可以在这里播放"
	end
end
class MusicRmvb
	def play
		puts ".rmvb格式的视频也可以在这里播放"
	end
end
def playMusic(music)
	music.play#duck typing只要求作为参数的对象拥有所需要的方法和属性即可
end
playMusic MusicAvi.new
playMusic Music3gp.new
playMusic MusicRmv.new
playMusic MusicRmvb.new