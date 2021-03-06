﻿module handlers.datfile;

import std.stdio, std.file, std.path, std.algorithm, std.traits, std.array, std.conv, std.string, consoled, imageformats, std.math;
import app, decoder, formats.pointertable, formats.relocationtable, formats.sna, formats.cnt, formats.gf, global, utils, structures.superobject, formats.datfile;

mixin registerHandlers;

@handler
void readdat(string[] args) {
	debug {
		args ~= r"D:\GOG Games\Rayman 2\Rayman 2 Modded\Data\World\Levels\LEVELS0.DAT";
	}

	if(args.length == 0) {
		writeln("Usage: readdat datfile");
		return;
	}

	File f = File(args[0]);

	uint table = 0xF40E0005;
	uint dataOffset = f.getOffsetInBigFile(table);
	uint magic = getMagicForTable(table);

	f.seek(dataOffset);

	auto data = f.readEncoded!(ubyte[1000])(magic);
	printMemory(data.ptr, 1000);
}