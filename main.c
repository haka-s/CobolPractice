/* Generated by           cobc 2.2.0 */
/* Generated from         main.cob */
/* Generated at           Jun 12 2021 15:49:20 */
/* GnuCOBOL build date    Jul 17 2018 20:29:40 */
/* GnuCOBOL package date  Sep 06 2017 18:48:43 UTC */
/* Compile command        cobc -C main.cob */

#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <math.h>
#define  COB_KEYWORD_INLINE __inline
#include <libcob.h>

#define  COB_SOURCE_FILE		"main.cob"
#define  COB_PACKAGE_VERSION		"2.2"
#define  COB_PATCH_LEVEL		0
#define  COB_MODULE_FORMATTED_DATE	"Jun 12 2021 15:49:20"
#define  COB_MODULE_DATE		20210612
#define  COB_MODULE_TIME		154920

/* Global variables */
#include "main.c.h"

/* Function prototypes */

int		MAIN (void);
static int		MAIN_ (const int);

/* Functions */

/* PROGRAM-ID 'MAIN' */

/* ENTRY 'MAIN' */

int
MAIN ()
{
  return MAIN_ (0);
}

static int
MAIN_ (const int entry)
{
  /* Program local variables */
  #include "main.c.l.h"

  /* Start of function code */

  /* CANCEL callback */
  if (unlikely(entry < 0)) {
  	if (entry == -20)
  		goto P_clear_decimal;
  	goto P_cancel;
  }

  /* Check initialized, check module allocated, */
  /* set global pointer, */
  /* push module stack, save call parameter count */
  if (cob_module_global_enter (&module, &cob_glob_ptr, 0, entry, 0))
  	return -1;

  /* Set address of module parameter list */
  module->cob_procedure_params = cob_procedure_params;

  /* Set frame stack pointer */
  frame_ptr = frame_stack;
  frame_ptr->perform_through = 0;

  /* Initialize rest of program */
  if (unlikely(initialized == 0)) {
  	goto P_initialize;
  }
  P_ret_initialize:

  /* Increment module active */
  module->module_active++;

  /* Entry dispatch */
  goto l_2;

  /* PROCEDURE DIVISION */

  /* Line: 21        : Entry     MAIN                    : main.cob */
  l_2:;

  /* Line: 21        : DISPLAY            : main.cob */
  cob_display (0, 0, 1, &c_1);

  /* Line: 22        : ACCEPT             : main.cob */
  cob_accept (&f_6);

  /* Line: 23        : DISPLAY            : main.cob */
  cob_display (0, 1, 2, &c_2, &f_6);

  /* Line: 27        : STOP RUN           : main.cob */
  cob_stop_run (b_2);

  /* Program exit */

  /* Decrement module active count */
  if (module->module_active) {
  	module->module_active--;
  }

  /* Pop module stack */
  cob_module_leave (module);

  /* Program return */
  return b_2;

  /* Program initialization */
  P_initialize:

  cob_check_version (COB_SOURCE_FILE, COB_PACKAGE_VERSION, COB_PATCH_LEVEL);

  /* Initialize module structure */
  module->module_name = "MAIN";
  module->module_formatted_date = COB_MODULE_FORMATTED_DATE;
  module->module_source = COB_SOURCE_FILE;
  module->module_entry.funcptr = (void *(*)())MAIN;
  module->module_cancel.funcptr = (void *(*)())MAIN_;
  module->collating_sequence = NULL;
  module->crt_status = NULL;
  module->cursor_pos = NULL;
  module->module_ref_count = NULL;
  module->module_path = &cob_module_path;
  module->module_active = 0;
  module->module_date = COB_MODULE_DATE;
  module->module_time = COB_MODULE_TIME;
  module->module_type = 0;
  module->module_param_cnt = 0;
  module->module_returning = 0;
  module->ebcdic_sign = 0;
  module->decimal_point = '.';
  module->currency_symbol = '$';
  module->numeric_separator = ',';
  module->flag_filename_mapping = 1;
  module->flag_binary_truncate = 1;
  module->flag_pretty_display = 1;
  module->flag_host_sign = 0;
  module->flag_no_phys_canc = 0;
  module->flag_main = 0;
  module->flag_fold_call = 0;
  module->flag_exit_program = 0;

  /* Initialize cancel callback */
  cob_set_cancel (module);

  /* Initialize WORKING-STORAGE */
  b_2 = 0;
  memcpy (b_6, "YOU", 3);
  memset (b_6 + 3, 32, 27);
  *(cob_u8_ptr)(b_7) = 48;
  *(cob_u8_ptr)(b_8) = 48;
  memset (b_9, 48, 2);
  memset (b_10, 48, 9);

  initialized = 1;
  goto P_ret_initialize;

  /* CANCEL callback handling */
  P_cancel:

  if (!initialized) {
  	return 0;
  }
  if (module->module_active) {
  	cob_fatal_error (COB_FERROR_CANCEL);
  }

  b_2 = 0;
  cob_module_free (&module);

  initialized = 0;

  P_clear_decimal:

  return 0;

}

/* End PROGRAM-ID 'MAIN' */

/* End functions */
