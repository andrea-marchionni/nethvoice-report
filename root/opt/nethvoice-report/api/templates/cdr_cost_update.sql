UPDATE `{{ .Table }}`
SET    	cost = billsec * {{ .Cost }} / 60
WHERE  	type = "OUT"
	AND call_type = "{{ .Destination }}"
	AND Substring_index(Substring_index(dstchannel,'-', 1), '/', -1) = "{{ .Trunk }}"
