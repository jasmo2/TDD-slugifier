def slugifier(strings)
	slug = strings.downcase.gsub(/á+/,'a')
		.gsub(/é+/,'e')
		.gsub(/í+/,'i')
		.gsub(/ó+/,'o')
		.gsub(/ú+/,'u')
		.gsub(/ñ+/,'n')
		.gsub(/[^\w\s-]/,'')
		.gsub(/\s+/,'-')
	return slug
end