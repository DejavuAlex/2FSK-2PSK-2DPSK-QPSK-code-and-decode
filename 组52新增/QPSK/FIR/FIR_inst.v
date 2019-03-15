	FIR u0 (
		.clk              (<connected-to-clk>),              //                     clk.clk
		.reset_n          (<connected-to-reset_n>),          //                     rst.reset_n
		.ast_sink_data    (<connected-to-ast_sink_data>),    //   avalon_streaming_sink.data
		.ast_sink_valid   (<connected-to-ast_sink_valid>),   //                        .valid
		.ast_sink_error   (<connected-to-ast_sink_error>),   //                        .error
		.ast_source_data  (<connected-to-ast_source_data>),  // avalon_streaming_source.data
		.ast_source_valid (<connected-to-ast_source_valid>), //                        .valid
		.ast_source_error (<connected-to-ast_source_error>)  //                        .error
	);

