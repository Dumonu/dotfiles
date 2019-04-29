
while read entry
do
    outstring=`echo $entry | awk '
        {
            split($0, fields, "},{", seps);
            for(i in fields) {
                print fields[i] seps[i];
                if (match(fields[i], "cpu_temperature") != 0) {
                    "nvidia-smi --query-gpu=temperature.gpu --format=csv,noheader" | getline temp;
                    print "\"name\":\"gpu_temperature\",\"markup\":\"none\",\"full_text\":\"GPU Temp: " temp " °C\"},{"
                }
            }
        }
    '`
    echo ${outstring//"\n"}
done

exit
