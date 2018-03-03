function DirectShowSource2(string source, float "fps", int "cache", int "seekthr", int "preroll", int "subsm", string "lavs", string "lavd", bool "flipv", bool "fliph", string "pixel_type", int "timeout")
{ 
    cache=default(cache, 10)            #backward cache size (in frames)
    seekthr=default(seekthr, 100)       #forward seeking threshold (in frames)
    preroll=default(preroll, 0)         #"underseek" for more precise seeking (in frames)
    subsm=default(subsm, 0)             #0 = no subs, 1 = try to render, 2 = force loading DirectVobSub and try to render
    lavs=default(lavs, "")              #use LAV Splitter and pass some settings to it
    lavd=default(lavd, "")              #use LAV Video Decoder and pass some settings to it
    lavf_path="\LAVFilters"             #relative or absolute path to LAVFilters folder
    dvs_path=""                         #relative or absolute path to VSFilter.dll    
    flipv=default(flipv, false)         #flip vertical
    fliph=default(fliph, false)         #flip horizontal
    pixel_type=default(pixel_type, "")  #allowed colorspace (YV12, YUY2, RGB24, RGB32 or RGB - only one of them; or "" for all)
    timeout=default(timeout, 30)        #timeout for waiting for decoded frame (in seconds, 0 = INFINITE)

    return DSS2(source, fps, cache, seekthr, preroll, subsm, lavs, lavd, lavf_path, dvs_path, flipv, fliph, pixel_type, timeout)
}