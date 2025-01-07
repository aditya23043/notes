// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================

#include <systemc>
#include <iostream>
#include <cstdlib>
#include <cstddef>
#include <stdint.h>
#include "SysCFileHandler.h"
#include "ap_int.h"
#include "ap_fixed.h"
#include <complex>
#include <stdbool.h>
#include "autopilot_cbe.h"
#include "hls_stream.h"
#include "hls_half.h"
#include "hls_signal_handler.h"

using namespace std;
using namespace sc_core;
using namespace sc_dt;


// [dump_struct_tree [build_nameSpaceTree] dumpedStructList] ---------->


// [dump_enumeration [get_enumeration_list]] ---------->


// wrapc file define: "FFT_input_M_real"
#define AUTOTB_TVIN_FFT_input_M_real  "../tv/cdatafile/c.fft_8point.autotvin_FFT_input_M_real.dat"
// wrapc file define: "FFT_input_M_imag"
#define AUTOTB_TVIN_FFT_input_M_imag  "../tv/cdatafile/c.fft_8point.autotvin_FFT_input_M_imag.dat"
// wrapc file define: "FFT_output_M_real"
#define AUTOTB_TVOUT_FFT_output_M_real  "../tv/cdatafile/c.fft_8point.autotvout_FFT_output_M_real.dat"
#define AUTOTB_TVIN_FFT_output_M_real  "../tv/cdatafile/c.fft_8point.autotvin_FFT_output_M_real.dat"
// wrapc file define: "FFT_output_M_imag"
#define AUTOTB_TVOUT_FFT_output_M_imag  "../tv/cdatafile/c.fft_8point.autotvout_FFT_output_M_imag.dat"
#define AUTOTB_TVIN_FFT_output_M_imag  "../tv/cdatafile/c.fft_8point.autotvin_FFT_output_M_imag.dat"

#define INTER_TCL  "../tv/cdatafile/ref.tcl"

// tvout file define: "FFT_output_M_real"
#define AUTOTB_TVOUT_PC_FFT_output_M_real  "../tv/rtldatafile/rtl.fft_8point.autotvout_FFT_output_M_real.dat"
// tvout file define: "FFT_output_M_imag"
#define AUTOTB_TVOUT_PC_FFT_output_M_imag  "../tv/rtldatafile/rtl.fft_8point.autotvout_FFT_output_M_imag.dat"

class INTER_TCL_FILE {
	public:
		INTER_TCL_FILE(const char* name) {
			mName = name;
			FFT_input_M_real_depth = 0;
			FFT_input_M_imag_depth = 0;
			FFT_output_M_real_depth = 0;
			FFT_output_M_imag_depth = 0;
			trans_num =0;
		}

		~INTER_TCL_FILE() {
			mFile.open(mName);
			if (!mFile.good()) {
				cout << "Failed to open file ref.tcl" << endl;
				exit (1);
			}
			string total_list = get_depth_list();
			mFile << "set depth_list {\n";
			mFile << total_list;
			mFile << "}\n";
			mFile << "set trans_num "<<trans_num<<endl;
			mFile.close();
		}

		string get_depth_list () {
			stringstream total_list;
			total_list << "{FFT_input_M_real " << FFT_input_M_real_depth << "}\n";
			total_list << "{FFT_input_M_imag " << FFT_input_M_imag_depth << "}\n";
			total_list << "{FFT_output_M_real " << FFT_output_M_real_depth << "}\n";
			total_list << "{FFT_output_M_imag " << FFT_output_M_imag_depth << "}\n";
			return total_list.str();
		}

		void set_num (int num , int* class_num) {
			(*class_num) = (*class_num) > num ? (*class_num) : num;
		}
	public:
		int FFT_input_M_real_depth;
		int FFT_input_M_imag_depth;
		int FFT_output_M_real_depth;
		int FFT_output_M_imag_depth;
		int trans_num;

	private:
		ofstream mFile;
		const char* mName;
};

extern void fft_8point (
std::complex<float > FFT_input[8],
std::complex<float > FFT_output[8]);

void AESL_WRAP_fft_8point (
std::complex<float > FFT_input[8],
std::complex<float > FFT_output[8])
{
	refine_signal_handler();
	fstream wrapc_switch_file_token;
	wrapc_switch_file_token.open(".hls_cosim_wrapc_switch.log");
	int AESL_i;
	if (wrapc_switch_file_token.good())
	{
		CodeState = ENTER_WRAPC_PC;
		static unsigned AESL_transaction_pc = 0;
		string AESL_token;
		string AESL_num;
		static AESL_FILE_HANDLER aesl_fh;


		// output port post check: "FFT_output_M_real"
		aesl_fh.read(AUTOTB_TVOUT_PC_FFT_output_M_real, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_FFT_output_M_real, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_FFT_output_M_real, AESL_token); // data

			sc_bv<32> *FFT_output_M_real_pc_buffer = new sc_bv<32>[8];
			int i = 0;

			while (AESL_token != "[[/transaction]]")
			{
				bool no_x = false;
				bool err = false;

				// search and replace 'X' with "0" from the 1st char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('X');
					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'FFT_output_M_real', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				no_x = false;

				// search and replace 'x' with "0" from the 3rd char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('x', 2);

					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'FFT_output_M_real', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				// push token into output port buffer
				if (AESL_token != "")
				{
					FFT_output_M_real_pc_buffer[i] = AESL_token.c_str();
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_FFT_output_M_real, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_FFT_output_M_real))
				{
					exit(1);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: FFT_output_M_real
				{
					// bitslice(31, 0)
					// {
						// celement: FFT_output._M_real(31, 0)
						// {
							sc_lv<32>* FFT_output__M_real_lv0_0_7_1 = new sc_lv<32>[8];
						// }
					// }

					// bitslice(31, 0)
					{
						int hls_map_index = 0;
						// celement: FFT_output._M_real(31, 0)
						{
							// carray: (0) => (7) @ (1)
							for (int i_0 = 0; i_0 <= 7; i_0 += 1)
							{
								if (&(FFT_output[0]) != NULL) // check the null address if the c port is array or others
								{
									FFT_output__M_real_lv0_0_7_1[hls_map_index].range(31, 0) = sc_bv<32>(FFT_output_M_real_pc_buffer[hls_map_index].range(31, 0));
									hls_map_index++;
								}
							}
						}
					}

					// bitslice(31, 0)
					{
						int hls_map_index = 0;
    float wrap_real_FFT_output__M_real;
						// celement: FFT_output._M_real(31, 0)
						{
							// carray: (0) => (7) @ (1)
							for (int i_0 = 0; i_0 <= 7; i_0 += 1)
							{
								// sub                    : i_0
								// ori_name               : FFT_output[i_0].real()
								// sub_1st_elem           : 0
								// ori_name_1st_elem      : FFT_output[0]
								// output_left_conversion : *(int*)&wrap_real_FFT_output__M_real
								// output_type_conversion : (FFT_output__M_real_lv0_0_7_1[hls_map_index]).to_uint64()
								if (&(FFT_output[0]) != NULL) // check the null address if the c port is array or others
								{
									wrap_real_FFT_output__M_real = FFT_output[i_0].real();
									*(int*)&wrap_real_FFT_output__M_real = (FFT_output__M_real_lv0_0_7_1[hls_map_index]).to_uint64();
									FFT_output[i_0].real(wrap_real_FFT_output__M_real);
									hls_map_index++;
								}
							}
						}
					}
				}
			}

			// release memory allocation
			delete [] FFT_output_M_real_pc_buffer;
		}

		// output port post check: "FFT_output_M_imag"
		aesl_fh.read(AUTOTB_TVOUT_PC_FFT_output_M_imag, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_FFT_output_M_imag, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_FFT_output_M_imag, AESL_token); // data

			sc_bv<32> *FFT_output_M_imag_pc_buffer = new sc_bv<32>[8];
			int i = 0;

			while (AESL_token != "[[/transaction]]")
			{
				bool no_x = false;
				bool err = false;

				// search and replace 'X' with "0" from the 1st char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('X');
					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'FFT_output_M_imag', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				no_x = false;

				// search and replace 'x' with "0" from the 3rd char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('x', 2);

					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'FFT_output_M_imag', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				// push token into output port buffer
				if (AESL_token != "")
				{
					FFT_output_M_imag_pc_buffer[i] = AESL_token.c_str();
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_FFT_output_M_imag, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_FFT_output_M_imag))
				{
					exit(1);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: FFT_output_M_imag
				{
					// bitslice(31, 0)
					// {
						// celement: FFT_output._M_imag(31, 0)
						// {
							sc_lv<32>* FFT_output__M_imag_lv0_0_7_1 = new sc_lv<32>[8];
						// }
					// }

					// bitslice(31, 0)
					{
						int hls_map_index = 0;
						// celement: FFT_output._M_imag(31, 0)
						{
							// carray: (0) => (7) @ (1)
							for (int i_0 = 0; i_0 <= 7; i_0 += 1)
							{
								if (&(FFT_output[0]) != NULL) // check the null address if the c port is array or others
								{
									FFT_output__M_imag_lv0_0_7_1[hls_map_index].range(31, 0) = sc_bv<32>(FFT_output_M_imag_pc_buffer[hls_map_index].range(31, 0));
									hls_map_index++;
								}
							}
						}
					}

					// bitslice(31, 0)
					{
						int hls_map_index = 0;
    float wrap_imag_FFT_output__M_imag;
						// celement: FFT_output._M_imag(31, 0)
						{
							// carray: (0) => (7) @ (1)
							for (int i_0 = 0; i_0 <= 7; i_0 += 1)
							{
								// sub                    : i_0
								// ori_name               : FFT_output[i_0].imag()
								// sub_1st_elem           : 0
								// ori_name_1st_elem      : FFT_output[0]
								// output_left_conversion : *(int*)&wrap_imag_FFT_output__M_imag
								// output_type_conversion : (FFT_output__M_imag_lv0_0_7_1[hls_map_index]).to_uint64()
								if (&(FFT_output[0]) != NULL) // check the null address if the c port is array or others
								{
									wrap_imag_FFT_output__M_imag = FFT_output[i_0].imag();
									*(int*)&wrap_imag_FFT_output__M_imag = (FFT_output__M_imag_lv0_0_7_1[hls_map_index]).to_uint64();
									FFT_output[i_0].imag(wrap_imag_FFT_output__M_imag);
									hls_map_index++;
								}
							}
						}
					}
				}
			}

			// release memory allocation
			delete [] FFT_output_M_imag_pc_buffer;
		}

		AESL_transaction_pc++;
	}
	else
	{
		CodeState = ENTER_WRAPC;
		static unsigned AESL_transaction;

		static AESL_FILE_HANDLER aesl_fh;

		// "FFT_input_M_real"
		char* tvin_FFT_input_M_real = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_FFT_input_M_real);

		// "FFT_input_M_imag"
		char* tvin_FFT_input_M_imag = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_FFT_input_M_imag);

		// "FFT_output_M_real"
		char* tvin_FFT_output_M_real = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_FFT_output_M_real);
		char* tvout_FFT_output_M_real = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_FFT_output_M_real);

		// "FFT_output_M_imag"
		char* tvin_FFT_output_M_imag = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_FFT_output_M_imag);
		char* tvout_FFT_output_M_imag = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_FFT_output_M_imag);

		CodeState = DUMP_INPUTS;
		static INTER_TCL_FILE tcl_file(INTER_TCL);
		int leading_zero;

		// [[transaction]]
		sprintf(tvin_FFT_input_M_real, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_FFT_input_M_real, tvin_FFT_input_M_real);

		sc_bv<32>* FFT_input_M_real_tvin_wrapc_buffer = new sc_bv<32>[8];

		// RTL Name: FFT_input_M_real
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
    float wrap_real_FFT_input__M_real;
				// celement: FFT_input._M_real(31, 0)
				{
					// carray: (0) => (7) @ (1)
					for (int i_0 = 0; i_0 <= 7; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : FFT_input[i_0].real()
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : FFT_input[0]
						// regulate_c_name       : FFT_input__M_real
						// input_type_conversion : *(int*)&wrap_real_FFT_input__M_real
						if (&(FFT_input[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<32> FFT_input__M_real_tmp_mem;
                                 	       wrap_real_FFT_input__M_real = FFT_input[i_0].real();
							FFT_input__M_real_tmp_mem = *(int*)&wrap_real_FFT_input__M_real;
							FFT_input_M_real_tvin_wrapc_buffer[hls_map_index].range(31, 0) = FFT_input__M_real_tmp_mem.range(31, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 8; i++)
		{
			sprintf(tvin_FFT_input_M_real, "%s\n", (FFT_input_M_real_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_FFT_input_M_real, tvin_FFT_input_M_real);
		}

		tcl_file.set_num(8, &tcl_file.FFT_input_M_real_depth);
		sprintf(tvin_FFT_input_M_real, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_FFT_input_M_real, tvin_FFT_input_M_real);

		// release memory allocation
		delete [] FFT_input_M_real_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_FFT_input_M_imag, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_FFT_input_M_imag, tvin_FFT_input_M_imag);

		sc_bv<32>* FFT_input_M_imag_tvin_wrapc_buffer = new sc_bv<32>[8];

		// RTL Name: FFT_input_M_imag
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
    float wrap_imag_FFT_input__M_imag;
				// celement: FFT_input._M_imag(31, 0)
				{
					// carray: (0) => (7) @ (1)
					for (int i_0 = 0; i_0 <= 7; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : FFT_input[i_0].imag()
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : FFT_input[0]
						// regulate_c_name       : FFT_input__M_imag
						// input_type_conversion : *(int*)&wrap_imag_FFT_input__M_imag
						if (&(FFT_input[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<32> FFT_input__M_imag_tmp_mem;
                                 	       wrap_imag_FFT_input__M_imag = FFT_input[i_0].imag();
							FFT_input__M_imag_tmp_mem = *(int*)&wrap_imag_FFT_input__M_imag;
							FFT_input_M_imag_tvin_wrapc_buffer[hls_map_index].range(31, 0) = FFT_input__M_imag_tmp_mem.range(31, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 8; i++)
		{
			sprintf(tvin_FFT_input_M_imag, "%s\n", (FFT_input_M_imag_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_FFT_input_M_imag, tvin_FFT_input_M_imag);
		}

		tcl_file.set_num(8, &tcl_file.FFT_input_M_imag_depth);
		sprintf(tvin_FFT_input_M_imag, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_FFT_input_M_imag, tvin_FFT_input_M_imag);

		// release memory allocation
		delete [] FFT_input_M_imag_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_FFT_output_M_real, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_FFT_output_M_real, tvin_FFT_output_M_real);

		sc_bv<32>* FFT_output_M_real_tvin_wrapc_buffer = new sc_bv<32>[8];

		// RTL Name: FFT_output_M_real
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
    float wrap_real_FFT_output__M_real;
				// celement: FFT_output._M_real(31, 0)
				{
					// carray: (0) => (7) @ (1)
					for (int i_0 = 0; i_0 <= 7; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : FFT_output[i_0].real()
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : FFT_output[0]
						// regulate_c_name       : FFT_output__M_real
						// input_type_conversion : *(int*)&wrap_real_FFT_output__M_real
						if (&(FFT_output[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<32> FFT_output__M_real_tmp_mem;
                                 	       wrap_real_FFT_output__M_real = FFT_output[i_0].real();
							FFT_output__M_real_tmp_mem = *(int*)&wrap_real_FFT_output__M_real;
							FFT_output_M_real_tvin_wrapc_buffer[hls_map_index].range(31, 0) = FFT_output__M_real_tmp_mem.range(31, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 8; i++)
		{
			sprintf(tvin_FFT_output_M_real, "%s\n", (FFT_output_M_real_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_FFT_output_M_real, tvin_FFT_output_M_real);
		}

		tcl_file.set_num(8, &tcl_file.FFT_output_M_real_depth);
		sprintf(tvin_FFT_output_M_real, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_FFT_output_M_real, tvin_FFT_output_M_real);

		// release memory allocation
		delete [] FFT_output_M_real_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_FFT_output_M_imag, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_FFT_output_M_imag, tvin_FFT_output_M_imag);

		sc_bv<32>* FFT_output_M_imag_tvin_wrapc_buffer = new sc_bv<32>[8];

		// RTL Name: FFT_output_M_imag
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
    float wrap_imag_FFT_output__M_imag;
				// celement: FFT_output._M_imag(31, 0)
				{
					// carray: (0) => (7) @ (1)
					for (int i_0 = 0; i_0 <= 7; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : FFT_output[i_0].imag()
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : FFT_output[0]
						// regulate_c_name       : FFT_output__M_imag
						// input_type_conversion : *(int*)&wrap_imag_FFT_output__M_imag
						if (&(FFT_output[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<32> FFT_output__M_imag_tmp_mem;
                                 	       wrap_imag_FFT_output__M_imag = FFT_output[i_0].imag();
							FFT_output__M_imag_tmp_mem = *(int*)&wrap_imag_FFT_output__M_imag;
							FFT_output_M_imag_tvin_wrapc_buffer[hls_map_index].range(31, 0) = FFT_output__M_imag_tmp_mem.range(31, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 8; i++)
		{
			sprintf(tvin_FFT_output_M_imag, "%s\n", (FFT_output_M_imag_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_FFT_output_M_imag, tvin_FFT_output_M_imag);
		}

		tcl_file.set_num(8, &tcl_file.FFT_output_M_imag_depth);
		sprintf(tvin_FFT_output_M_imag, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_FFT_output_M_imag, tvin_FFT_output_M_imag);

		// release memory allocation
		delete [] FFT_output_M_imag_tvin_wrapc_buffer;

// [call_c_dut] ---------->

		CodeState = CALL_C_DUT;
		fft_8point(FFT_input, FFT_output);

		CodeState = DUMP_OUTPUTS;

		// [[transaction]]
		sprintf(tvout_FFT_output_M_real, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_FFT_output_M_real, tvout_FFT_output_M_real);

		sc_bv<32>* FFT_output_M_real_tvout_wrapc_buffer = new sc_bv<32>[8];

		// RTL Name: FFT_output_M_real
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
    float wrap_real_FFT_output__M_real;
				// celement: FFT_output._M_real(31, 0)
				{
					// carray: (0) => (7) @ (1)
					for (int i_0 = 0; i_0 <= 7; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : FFT_output[i_0].real()
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : FFT_output[0]
						// regulate_c_name       : FFT_output__M_real
						// input_type_conversion : *(int*)&wrap_real_FFT_output__M_real
						if (&(FFT_output[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<32> FFT_output__M_real_tmp_mem;
                                 	       wrap_real_FFT_output__M_real = FFT_output[i_0].real();
							FFT_output__M_real_tmp_mem = *(int*)&wrap_real_FFT_output__M_real;
							FFT_output_M_real_tvout_wrapc_buffer[hls_map_index].range(31, 0) = FFT_output__M_real_tmp_mem.range(31, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 8; i++)
		{
			sprintf(tvout_FFT_output_M_real, "%s\n", (FFT_output_M_real_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_FFT_output_M_real, tvout_FFT_output_M_real);
		}

		tcl_file.set_num(8, &tcl_file.FFT_output_M_real_depth);
		sprintf(tvout_FFT_output_M_real, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_FFT_output_M_real, tvout_FFT_output_M_real);

		// release memory allocation
		delete [] FFT_output_M_real_tvout_wrapc_buffer;

		// [[transaction]]
		sprintf(tvout_FFT_output_M_imag, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_FFT_output_M_imag, tvout_FFT_output_M_imag);

		sc_bv<32>* FFT_output_M_imag_tvout_wrapc_buffer = new sc_bv<32>[8];

		// RTL Name: FFT_output_M_imag
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
    float wrap_imag_FFT_output__M_imag;
				// celement: FFT_output._M_imag(31, 0)
				{
					// carray: (0) => (7) @ (1)
					for (int i_0 = 0; i_0 <= 7; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : FFT_output[i_0].imag()
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : FFT_output[0]
						// regulate_c_name       : FFT_output__M_imag
						// input_type_conversion : *(int*)&wrap_imag_FFT_output__M_imag
						if (&(FFT_output[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<32> FFT_output__M_imag_tmp_mem;
                                 	       wrap_imag_FFT_output__M_imag = FFT_output[i_0].imag();
							FFT_output__M_imag_tmp_mem = *(int*)&wrap_imag_FFT_output__M_imag;
							FFT_output_M_imag_tvout_wrapc_buffer[hls_map_index].range(31, 0) = FFT_output__M_imag_tmp_mem.range(31, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 8; i++)
		{
			sprintf(tvout_FFT_output_M_imag, "%s\n", (FFT_output_M_imag_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_FFT_output_M_imag, tvout_FFT_output_M_imag);
		}

		tcl_file.set_num(8, &tcl_file.FFT_output_M_imag_depth);
		sprintf(tvout_FFT_output_M_imag, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_FFT_output_M_imag, tvout_FFT_output_M_imag);

		// release memory allocation
		delete [] FFT_output_M_imag_tvout_wrapc_buffer;

		CodeState = DELETE_CHAR_BUFFERS;
		// release memory allocation: "FFT_input_M_real"
		delete [] tvin_FFT_input_M_real;
		// release memory allocation: "FFT_input_M_imag"
		delete [] tvin_FFT_input_M_imag;
		// release memory allocation: "FFT_output_M_real"
		delete [] tvout_FFT_output_M_real;
		delete [] tvin_FFT_output_M_real;
		// release memory allocation: "FFT_output_M_imag"
		delete [] tvout_FFT_output_M_imag;
		delete [] tvin_FFT_output_M_imag;

		AESL_transaction++;

		tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
	}
}

