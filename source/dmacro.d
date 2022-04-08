module dmacro;

import colorize;
import std.stdio;
import std.string;
import std.algorithm;
import std.file;
import std.array;

import applogger;

/// generate a dictionary from parsed DMacro code
string[][string] parseDM(string s) {
    
    string buffer;
    int state = 0;
    string[][string] fB;
    
    string k;
    string[] v;

    buffer = strip(buffer);

    foreach (char sw; s)
    {
        if (sw == '(' && state == 0) {
            state = 1;
            k = buffer.strip;
            buffer = "";
        } else if (sw == ')' && state == 1) {

            if (buffer.length != 0) v = v ~ buffer.strip;
            state = 0;
            buffer = "";
            fB[k] = v;
            k = "";
            v = [];

        } else if (sw == ',' && state == 1) {

            v = v ~ buffer.strip;
            buffer = "";
            

        } else if (sw == '"' && state == 1) {

            state = 999;

        } else if (sw == '"' && state == 999) state = 1;

        else {
            buffer ~= sw;
        }
    }
    return fB;
}