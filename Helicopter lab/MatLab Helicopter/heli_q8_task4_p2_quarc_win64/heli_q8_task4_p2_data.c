/*
 * heli_q8_task4_p2_data.c
 *
 * Code generation for model "heli_q8_task4_p2".
 *
 * Model version              : 1.92
 * Simulink Coder version : 8.6 (R2014a) 27-Dec-2013
 * C source code generated on : Tue Sep 25 13:13:03 2018
 *
 * Target selection: quarc_win64.tlc
 * Note: GRT includes extra infrastructure and instrumentation for prototyping
 * Embedded hardware selection: 32-bit Generic
 * Code generation objectives: Unspecified
 * Validation result: Not run
 */
#include "heli_q8_task4_p2.h"
#include "heli_q8_task4_p2_private.h"

/* Block parameters (auto storage) */
P_heli_q8_task4_p2_T heli_q8_task4_p2_P = {
  /*  Variable: A
   * Referenced by: '<S6>/A'
   */
  { 0.0, 0.0, 0.0, 0.0, 0.0, -7.8321659632751688, 1.0, 0.0, 0.0, 0.0, 0.0, 0.0,
    0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0,
    0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1.0, 0.0 },

  /*  Variable: B
   * Referenced by: '<S6>/B'
   */
  { 0.0, 0.0, 0.0, 0.091317573843581634, 0.0, 0.0, 0.0, 0.56746031746031744, 0.0,
    0.0, 0.0, 0.0 },

  /*  Variable: C
   * Referenced by: '<S6>/C'
   */
  { 1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1.0,
    0.0, 0.0, 0.0 },
  1.0,                                 /* Variable: Joystick_gain_x
                                        * Referenced by: '<S4>/Joystick_gain_x'
                                        */
  -1.0,                                /* Variable: Joystick_gain_y
                                        * Referenced by: '<S4>/Joystick_gain_y'
                                        */

  /*  Variable: K
   * Referenced by: '<Root>/K'
   */
  { 4.4218869731514221E-16, 15.641509333448786, -6.0110013087123684E-18,
    7.4918700476980895, 1.0000000000000002, 3.7863622161152156E-16,
    5.6481491941848629, -3.7353212172927773E-17, -5.1689998216319422E-17,
    -1.0000000000000011, -9.0629372100973035E-17, -2.2347644364546233 },

  /*  Variable: L
   * Referenced by: '<S6>/L'
   */
  { 22.152388771942295, 121.39810534293147, -0.090000404444003451,
    -1.0988438601332637, -1.9404880419475667E-15, -7.8321659632751883,
    -0.090000404444062168, -1.0988438601339794, 21.265738126540562,
    110.5727026816682, -7.1727739160088041E-15, -6.8351618569112535E-14,
    -6.7280265449417896E-15, -7.46257799564357E-14, -5.0352295026782331E-14,
    -5.7742156192448876E-13, 18.999484184117279, 90.040462401082763 },

  /*  Variable: P
   * Referenced by: '<Root>/P '
   */
  { 0.0, 10.0, 10.0, 0.0 },
  10.0,                                /* Mask Parameter: HILInitialize_analog_input_maxi
                                        * Referenced by: '<Root>/HIL Initialize'
                                        */
  -10.0,                               /* Mask Parameter: HILInitialize_analog_input_mini
                                        * Referenced by: '<Root>/HIL Initialize'
                                        */
  10.0,                                /* Mask Parameter: HILInitialize_analog_output_max
                                        * Referenced by: '<Root>/HIL Initialize'
                                        */
  -10.0,                               /* Mask Parameter: HILInitialize_analog_output_min
                                        * Referenced by: '<Root>/HIL Initialize'
                                        */
  0.0,                                 /* Mask Parameter: HILInitialize_final_analog_outp
                                        * Referenced by: '<Root>/HIL Initialize'
                                        */
  0.0,                                 /* Mask Parameter: HILInitialize_final_pwm_outputs
                                        * Referenced by: '<Root>/HIL Initialize'
                                        */
  0.0,                                 /* Mask Parameter: HILInitialize_initial_analog_ou
                                        * Referenced by: '<Root>/HIL Initialize'
                                        */
  0.0,                                 /* Mask Parameter: HILInitialize_initial_pwm_outpu
                                        * Referenced by: '<Root>/HIL Initialize'
                                        */
  24305.934065934067,                  /* Mask Parameter: HILInitialize_pwm_frequency
                                        * Referenced by: '<Root>/HIL Initialize'
                                        */
  0.0,                                 /* Mask Parameter: HILInitialize_pwm_leading_deadb
                                        * Referenced by: '<Root>/HIL Initialize'
                                        */
  0.0,                                 /* Mask Parameter: HILInitialize_pwm_trailing_dead
                                        * Referenced by: '<Root>/HIL Initialize'
                                        */
  0.0,                                 /* Mask Parameter: HILInitialize_set_other_outputs
                                        * Referenced by: '<Root>/HIL Initialize'
                                        */
  0.0,                                 /* Mask Parameter: HILInitialize_set_other_outpu_m
                                        * Referenced by: '<Root>/HIL Initialize'
                                        */
  0.0,                                 /* Mask Parameter: HILInitialize_set_other_outpu_k
                                        * Referenced by: '<Root>/HIL Initialize'
                                        */
  0.0,                                 /* Mask Parameter: HILInitialize_set_other_outpu_j
                                        * Referenced by: '<Root>/HIL Initialize'
                                        */
  0.0,                                 /* Mask Parameter: HILInitialize_watchdog_analog_o
                                        * Referenced by: '<Root>/HIL Initialize'
                                        */
  0.0,                                 /* Mask Parameter: HILInitialize_watchdog_pwm_outp
                                        * Referenced by: '<Root>/HIL Initialize'
                                        */
  0,                                   /* Mask Parameter: HILReadEncoderTimebase_clock
                                        * Referenced by: '<S3>/HIL Read Encoder Timebase'
                                        */

  /*  Mask Parameter: HILInitialize_hardware_clocks
   * Referenced by: '<Root>/HIL Initialize'
   */
  { 0, 1, 2 },
  0,                                   /* Mask Parameter: HILInitialize_initial_encoder_c
                                        * Referenced by: '<Root>/HIL Initialize'
                                        */
  0,                                   /* Mask Parameter: HILInitialize_pwm_alignment
                                        * Referenced by: '<Root>/HIL Initialize'
                                        */
  0,                                   /* Mask Parameter: HILInitialize_pwm_configuration
                                        * Referenced by: '<Root>/HIL Initialize'
                                        */
  0,                                   /* Mask Parameter: HILInitialize_pwm_modes
                                        * Referenced by: '<Root>/HIL Initialize'
                                        */
  1,                                   /* Mask Parameter: HILInitialize_pwm_polarity
                                        * Referenced by: '<Root>/HIL Initialize'
                                        */
  1,                                   /* Mask Parameter: HILInitialize_watchdog_digital_
                                        * Referenced by: '<Root>/HIL Initialize'
                                        */

  /*  Mask Parameter: HILInitialize_analog_input_chan
   * Referenced by: '<Root>/HIL Initialize'
   */
  { 0U, 1U, 2U, 3U, 4U, 5U, 6U, 7U },

  /*  Mask Parameter: HILInitialize_analog_output_cha
   * Referenced by: '<Root>/HIL Initialize'
   */
  { 0U, 1U, 2U, 3U, 4U, 5U, 6U, 7U },

  /*  Mask Parameter: HILReadEncoderTimebase_channels
   * Referenced by: '<S3>/HIL Read Encoder Timebase'
   */
  { 0U, 1U, 2U },

  /*  Mask Parameter: HILWriteAnalog_channels
   * Referenced by: '<S3>/HIL Write Analog'
   */
  { 0U, 1U },

  /*  Mask Parameter: HILInitialize_encoder_channels
   * Referenced by: '<Root>/HIL Initialize'
   */
  { 0U, 1U, 2U, 3U, 4U, 5U, 6U, 7U },

  /*  Mask Parameter: HILInitialize_pwm_channels
   * Referenced by: '<Root>/HIL Initialize'
   */
  { 0U, 1U, 2U, 3U, 4U, 5U, 6U, 7U },
  4U,                                  /* Mask Parameter: HILInitialize_quadrature
                                        * Referenced by: '<Root>/HIL Initialize'
                                        */
  500U,                                /* Mask Parameter: HILReadEncoderTimebase_samples_
                                        * Referenced by: '<S3>/HIL Read Encoder Timebase'
                                        */
  0,                                   /* Mask Parameter: HILInitialize_active
                                        * Referenced by: '<Root>/HIL Initialize'
                                        */
  1,                                   /* Mask Parameter: HILInitialize_final_digital_out
                                        * Referenced by: '<Root>/HIL Initialize'
                                        */
  1,                                   /* Mask Parameter: HILInitialize_initial_digital_o
                                        * Referenced by: '<Root>/HIL Initialize'
                                        */
  1,                                   /* Mask Parameter: HILInitialize_set_analog_input_
                                        * Referenced by: '<Root>/HIL Initialize'
                                        */
  0,                                   /* Mask Parameter: HILInitialize_set_analog_inpu_m
                                        * Referenced by: '<Root>/HIL Initialize'
                                        */
  1,                                   /* Mask Parameter: HILInitialize_set_analog_output
                                        * Referenced by: '<Root>/HIL Initialize'
                                        */
  0,                                   /* Mask Parameter: HILInitialize_set_analog_outp_b
                                        * Referenced by: '<Root>/HIL Initialize'
                                        */
  1,                                   /* Mask Parameter: HILInitialize_set_analog_outp_e
                                        * Referenced by: '<Root>/HIL Initialize'
                                        */
  0,                                   /* Mask Parameter: HILInitialize_set_analog_outp_j
                                        * Referenced by: '<Root>/HIL Initialize'
                                        */
  0,                                   /* Mask Parameter: HILInitialize_set_analog_outp_c
                                        * Referenced by: '<Root>/HIL Initialize'
                                        */
  1,                                   /* Mask Parameter: HILInitialize_set_analog_out_ex
                                        * Referenced by: '<Root>/HIL Initialize'
                                        */
  0,                                   /* Mask Parameter: HILInitialize_set_analog_outp_p
                                        * Referenced by: '<Root>/HIL Initialize'
                                        */
  0,                                   /* Mask Parameter: HILInitialize_set_clock_frequen
                                        * Referenced by: '<Root>/HIL Initialize'
                                        */
  0,                                   /* Mask Parameter: HILInitialize_set_clock_frequ_e
                                        * Referenced by: '<Root>/HIL Initialize'
                                        */
  0,                                   /* Mask Parameter: HILInitialize_set_clock_params_
                                        * Referenced by: '<Root>/HIL Initialize'
                                        */
  0,                                   /* Mask Parameter: HILInitialize_set_clock_param_c
                                        * Referenced by: '<Root>/HIL Initialize'
                                        */
  0,                                   /* Mask Parameter: HILInitialize_set_digital_outpu
                                        * Referenced by: '<Root>/HIL Initialize'
                                        */
  0,                                   /* Mask Parameter: HILInitialize_set_digital_out_b
                                        * Referenced by: '<Root>/HIL Initialize'
                                        */
  1,                                   /* Mask Parameter: HILInitialize_set_digital_out_c
                                        * Referenced by: '<Root>/HIL Initialize'
                                        */
  0,                                   /* Mask Parameter: HILInitialize_set_digital_ou_c1
                                        * Referenced by: '<Root>/HIL Initialize'
                                        */
  0,                                   /* Mask Parameter: HILInitialize_set_digital_out_a
                                        * Referenced by: '<Root>/HIL Initialize'
                                        */
  1,                                   /* Mask Parameter: HILInitialize_set_digital_out_j
                                        * Referenced by: '<Root>/HIL Initialize'
                                        */
  0,                                   /* Mask Parameter: HILInitialize_set_digital_out_m
                                        * Referenced by: '<Root>/HIL Initialize'
                                        */
  1,                                   /* Mask Parameter: HILInitialize_set_encoder_count
                                        * Referenced by: '<Root>/HIL Initialize'
                                        */
  0,                                   /* Mask Parameter: HILInitialize_set_encoder_cou_k
                                        * Referenced by: '<Root>/HIL Initialize'
                                        */
  1,                                   /* Mask Parameter: HILInitialize_set_encoder_param
                                        * Referenced by: '<Root>/HIL Initialize'
                                        */
  0,                                   /* Mask Parameter: HILInitialize_set_encoder_par_m
                                        * Referenced by: '<Root>/HIL Initialize'
                                        */
  0,                                   /* Mask Parameter: HILInitialize_set_other_outpu_l
                                        * Referenced by: '<Root>/HIL Initialize'
                                        */
  1,                                   /* Mask Parameter: HILInitialize_set_pwm_outputs_a
                                        * Referenced by: '<Root>/HIL Initialize'
                                        */
  0,                                   /* Mask Parameter: HILInitialize_set_pwm_outputs_g
                                        * Referenced by: '<Root>/HIL Initialize'
                                        */
  0,                                   /* Mask Parameter: HILInitialize_set_pwm_outputs_p
                                        * Referenced by: '<Root>/HIL Initialize'
                                        */
  1,                                   /* Mask Parameter: HILInitialize_set_pwm_output_ap
                                        * Referenced by: '<Root>/HIL Initialize'
                                        */
  0,                                   /* Mask Parameter: HILInitialize_set_pwm_outputs_o
                                        * Referenced by: '<Root>/HIL Initialize'
                                        */
  1,                                   /* Mask Parameter: HILInitialize_set_pwm_params_at
                                        * Referenced by: '<Root>/HIL Initialize'
                                        */
  0,                                   /* Mask Parameter: HILInitialize_set_pwm_params__f
                                        * Referenced by: '<Root>/HIL Initialize'
                                        */
  0.0015339807878856412,               /* Expression: 2*pi /4096
                                        * Referenced by: '<S3>/Pitch: Count to rad'
                                        */
  57.295779513082323,                  /* Expression: 180/pi
                                        * Referenced by: '<S11>/Gain'
                                        */
  0.0,                                 /* Expression: 0
                                        * Referenced by: '<S6>/Integrator2'
                                        */
  30.0,                                /* Expression: 30
                                        * Referenced by: '<Root>/Constant'
                                        */
  7.0,                                 /* Expression: 7
                                        * Referenced by: '<Root>/Constant1'
                                        */
  0.0,                                 /* Expression: 0
                                        * Referenced by: '<S4>/Rate Transition: x'
                                        */
  -0.1,                                /* Expression: -0.1
                                        * Referenced by: '<S4>/Dead Zone: x'
                                        */
  0.1,                                 /* Expression: 0.1
                                        * Referenced by: '<S4>/Dead Zone: x'
                                        */
  1.1111111111111112,                  /* Expression: 10/9
                                        * Referenced by: '<S4>/Gain: x'
                                        */
  0.0,                                 /* Expression: 0
                                        * Referenced by: '<S4>/Rate Transition: y'
                                        */
  -0.1,                                /* Expression: -0.1
                                        * Referenced by: '<S4>/Dead Zone: y'
                                        */
  0.1,                                 /* Expression: 0.1
                                        * Referenced by: '<S4>/Dead Zone: y'
                                        */
  1.1111111111111112,                  /* Expression: 10/9
                                        * Referenced by: '<S4>/Gain: y'
                                        */
  0.5,                                 /* Expression: 0.5
                                        * Referenced by: '<S1>/Back gain'
                                        */
  0.5,                                 /* Expression: 0.5
                                        * Referenced by: '<S1>/Front gain'
                                        */
  -0.0015339807878856412,              /* Expression: -2 * pi /4096
                                        * Referenced by: '<S3>/Elevation: Count to rad'
                                        */
  -50.0,                               /* Computed Parameter: ElevationTransferFcn_A
                                        * Referenced by: '<S3>/Elevation: Transfer Fcn'
                                        */
  -2500.0,                             /* Computed Parameter: ElevationTransferFcn_C
                                        * Referenced by: '<S3>/Elevation: Transfer Fcn'
                                        */
  50.0,                                /* Computed Parameter: ElevationTransferFcn_D
                                        * Referenced by: '<S3>/Elevation: Transfer Fcn'
                                        */
  57.295779513082323,                  /* Expression: 180/pi
                                        * Referenced by: '<S10>/Gain'
                                        */
  57.295779513082323,                  /* Expression: 180/pi
                                        * Referenced by: '<S9>/Gain'
                                        */
  -50.0,                               /* Computed Parameter: PitchTransferFcn_A
                                        * Referenced by: '<S3>/Pitch: Transfer Fcn'
                                        */
  -2500.0,                             /* Computed Parameter: PitchTransferFcn_C
                                        * Referenced by: '<S3>/Pitch: Transfer Fcn'
                                        */
  50.0,                                /* Computed Parameter: PitchTransferFcn_D
                                        * Referenced by: '<S3>/Pitch: Transfer Fcn'
                                        */
  57.295779513082323,                  /* Expression: 180/pi
                                        * Referenced by: '<S12>/Gain'
                                        */
  0.00076699039394282058,              /* Expression: 2*pi/8192
                                        * Referenced by: '<S3>/Travel: Count to rad'
                                        */
  -50.0,                               /* Computed Parameter: TravelTransferFcn_A
                                        * Referenced by: '<S3>/Travel: Transfer Fcn'
                                        */
  -2500.0,                             /* Computed Parameter: TravelTransferFcn_C
                                        * Referenced by: '<S3>/Travel: Transfer Fcn'
                                        */
  50.0,                                /* Computed Parameter: TravelTransferFcn_D
                                        * Referenced by: '<S3>/Travel: Transfer Fcn'
                                        */
  57.295779513082323,                  /* Expression: 180/pi
                                        * Referenced by: '<S14>/Gain'
                                        */
  57.295779513082323,                  /* Expression: 180/pi
                                        * Referenced by: '<S13>/Gain'
                                        */
  5.0,                                 /* Expression: 5
                                        * Referenced by: '<S3>/Front motor: Saturation'
                                        */
  -5.0,                                /* Expression: -5
                                        * Referenced by: '<S3>/Front motor: Saturation'
                                        */
  5.0,                                 /* Expression: 5
                                        * Referenced by: '<S3>/Back motor: Saturation'
                                        */
  -5.0,                                /* Expression: -5
                                        * Referenced by: '<S3>/Back motor: Saturation'
                                        */
  0.0,                                 /* Expression: 0
                                        * Referenced by: '<S8>/Integrator'
                                        */
  0.0,                                 /* Expression: inf
                                        * Referenced by: '<S8>/Integrator'
                                        */
  0.0,                                 /* Expression: -inf
                                        * Referenced by: '<S8>/Integrator'
                                        */
  5.0,                                 /* Expression: 5
                                        * Referenced by: '<S8>/K_ei'
                                        */
  12U,                                 /* Computed Parameter: GameController_BufferSize
                                        * Referenced by: '<S4>/Game Controller'
                                        */
  1U,                                  /* Computed Parameter: GameController_ControllerNumber
                                        * Referenced by: '<S4>/Game Controller'
                                        */
  1,                                   /* Computed Parameter: HILReadEncoderTimebase_Active
                                        * Referenced by: '<S3>/HIL Read Encoder Timebase'
                                        */
  0,                                   /* Computed Parameter: HILWriteAnalog_Active
                                        * Referenced by: '<S3>/HIL Write Analog'
                                        */
  0,                                   /* Computed Parameter: GameController_AutoCenter
                                        * Referenced by: '<S4>/Game Controller'
                                        */
  1                                    /* Computed Parameter: GameController_Enabled
                                        * Referenced by: '<S4>/Game Controller'
                                        */
};
