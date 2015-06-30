class Stocker

	def initialize
		@response = HTTParty.get("http://finance.yahoo.com/q?s=AAPL")
		@dom = Nokogiri::HTML(@response.body)
		@list_of_current = @dom.xpath("//span[@id='yfs_l84_aapl']")
		@result_current = @list_of_current.first
		@list_of_prev = @dom.xpath("//td[@class='yfnc_tabledata1']")
		@result_prev = @list_of_prev.first
		@list_of_change = @dom.xpath("//span[@id='yfs_p43_aapl']")
		@result_change = @list_of_change.first

	end


	def printout

		"<h1 >The current price of AAPL is $#{@result_current.text}</h1>
		 <p>The prev close price is $#{@result_prev.text} which is a change of #{@result_change.text}</p>"

	end
end