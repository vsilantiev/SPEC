--------------------------------------------------------------------------------
-- CERN (BE-CO-HT)
-- FMC ADC 100Ms/s core
-- http://www.ohwr.org/projects/fmc-adc-100m14b4cha
--------------------------------------------------------------------------------
--
-- unit name: sdb_meta_pkg (sdb_meta_pkg.vhd)
--
-- author: Matthieu Cattin (matthieu.cattin@cern.ch)
--
-- date: 11-03-2013
--
-- description: Sdb meta-information for the FMC ADC 100Ms/s design for SPEC.
--
--------------------------------------------------------------------------------
-- GNU LESSER GENERAL PUBLIC LICENSE
--------------------------------------------------------------------------------
-- This source file is free software; you can redistribute it and/or modify it
-- under the terms of the GNU Lesser General Public License as published by the
-- Free Software Foundation; either version 2.1 of the License, or (at your
-- option) any later version. This source is distributed in the hope that it
-- will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty
-- of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
-- See the GNU Lesser General Public License for more details. You should have
-- received a copy of the GNU Lesser General Public License along with this
-- source; if not, download it from http://www.gnu.org/licenses/lgpl-2.1.html
--------------------------------------------------------------------------------
-- last changes: see git log.
--------------------------------------------------------------------------------
-- TODO: - 
--------------------------------------------------------------------------------

library ieee;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.wishbone_pkg.all;

package sdb_meta_pkg is

  ------------------------------------------------------------------------------
  -- Meta-information sdb records
  ------------------------------------------------------------------------------

  -- Top module repository url
  constant c_repo_url_sdb : t_sdb_repo_url := (
    -- url (string, 63 char)
    repo_url => "git://ohwr.org/fmc-projects/fmc-adc-100m14b4cha.git            ");

  -- Synthesis informations
  constant c_synthesis_sdb : t_sdb_synthesis := (
    -- Top module name (string, 16 char)
    syn_module_name  => "spec_top_fmc_adc",
    -- Commit ID (hex string, 128-bit = 32 char)
    -- git log -1 --format="%H" | cut -c1-32
    syn_commit_id    => "26749f0a1873c215abb33942a8a335db",
    -- Synthesis tool name (string, 8 char)
    syn_tool_name    => "ISE     ",
    -- Synthesis tool version (bcd encoded, 32-bit)
    syn_tool_version => x"00000133",
    -- Synthesis date (bcd encoded, 32-bit, yyyymmdd)
    syn_date         => x"20140425",
    -- Synthesised by (string, 15 char)
    syn_username     => "mcattin        ");

  -- Integration record
  constant c_integration_sdb : t_sdb_integration := (
    product     => (
      vendor_id => x"000000000000CE42",  -- CERN
      device_id => x"47c786a2",          -- echo "spec_fmc-adc-100m14b4cha" | md5sum | cut -c1-8
      version   => x"00040000",          -- bcd encoded, [31:16] = major, [15:0] = minor
      date      => x"20140425",          -- yyyymmdd
      name      => "spec_fmcadc100m14b "));


end sdb_meta_pkg;


package body sdb_meta_pkg is
end sdb_meta_pkg;
