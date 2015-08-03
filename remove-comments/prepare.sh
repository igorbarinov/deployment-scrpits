for line in $(find . -iname '*.m' -o -iname '*.h'); do 
	echo "$line"
	# remove comments
	./prepare_remove_comments.sed "$line"
	# compress blank lines
	sed -i .bak '/^$/N;/^\n$/D' "$line"
	# remove .bak files
	rm "$line".bak
done
