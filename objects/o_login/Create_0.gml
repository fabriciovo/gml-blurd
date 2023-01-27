

xhr_post("https://localhost:7156/auth/login", new StructBody({
		username:"sss",
		password:"123"
}), {
	done: function(res) {
		var json = res.data;
		show_message(json.data);
	},
	fail: function(res) {
		show_message(res)
		show_message("Upload failed. Try again later.");
	}
});

