function move_videos
    set storage_directory /home/brian/Videos/videos/unsorted/

    for from_file_path in **.{mp4,AVI,3gp}
        set filename (basename $from_file_path)
        set to_file_path (string join '' $storage_directory $filename)
        set loop 2
        set stripped_filename (path change-extension '' $filename)
        set file_extension (path extension $filename)

        while test -e $to_file_path
            echo $to_file_path exists
            set filename (string join _ $stripped_filename $loop)
            set filename (string join '' $filename $file_extension)
            set to_file_path (string join '' $storage_directory $filename)
            set loop (math $loop + 1)
        end

        mv $from_file_path $to_file_path
    end
end
