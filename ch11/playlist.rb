def shuffle user_list
  shuffled_list = []
  run_time = 0
  for x in user_list
    shuffled_list.push(x)
  end
  recursive_shuffle user_list, shuffled_list, run_time
end

def recursive_shuffle user_list, shuffled_list, run_time
  u_length = user_list.length
  s = shuffled_list.uniq
  s_length = s.length

  if s_length == u_length and run_time > 1
    return shuffled_list
  end

  #recursion steps
  u_length.times do |x|
    r1 = rand(u_length)
    shuffled_list[x] = user_list[r1]
  end

  run_time = run_time+1

  recursive_shuffle user_list, shuffled_list, run_time
end

require 'yaml'

Dir.chdir '/Users/billzhang/Desktop/Music/'

music_file = Dir['*.m4a']

shuffled_file = shuffle music_file

test_file = shuffled_file.to_yaml

filename = "Bill's Playlist.m3u"

File.open filename, 'w' do |f|
  f.write test_file
end

read_file = File.read filename
puts(read_file)

puts('Done')
