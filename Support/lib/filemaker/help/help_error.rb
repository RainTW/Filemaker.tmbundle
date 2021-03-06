#!/usr/bin/ruby -KU
# encoding: UTF-8
#
# help_error.rb
#
# Author::      Donovan Chandler (mailto:donovan_c@beezwax.net)
# Copyright::   Copyright (c) 2010-2012 Donovan Chandler
# License::     Distributed under GNU General Public License <http://www.gnu.org/licenses/>
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.
#

# Accesses FileMaker help documentation
module FileMaker::FMHelp

  ERROR_BASE_URL = HELP_BASE_URL + 'error_codes.html'

  # Searches ERROR_URLS for key matching query. Returns url to page for that entry. Ignores whitespace in query.
  #   get_error_doc('-1') = 'http://www.filemaker.com/help/13/fmp/en/html/error_codes.html#1030079'
  #   get_function_doc('') = 'http://www.filemaker.com/help/13/fmp/en/html/error_codes.html'
  def self.get_error_doc(query)
    query.strip!
    ERROR_URLS[query] #|| ERROR_BASE_URL
  end

  # Generated using following shell command
  #   ruby -e 'STDOUT << "ERROR_URLS = {\n" << `curl -s http://www.filemaker.com/help/13/fmp/en/html/error_codes.html`.force_encoding("ISO-8859-1").encode("utf-8", replace: nil)
  ERROR_URLS = {
  "-1"               => ERROR_BASE_URL + "#1030079",
  "0"                => ERROR_BASE_URL + "#1030083",
  "1"                => ERROR_BASE_URL + "#1030087",
  "2"                => ERROR_BASE_URL + "#1030091",
  "3"                => ERROR_BASE_URL + "#1030095",
  "4"                => ERROR_BASE_URL + "#1030099",
  "5"                => ERROR_BASE_URL + "#1030103",
  "6"                => ERROR_BASE_URL + "#1030107",
  "7"                => ERROR_BASE_URL + "#1030111",
  "8"                => ERROR_BASE_URL + "#1030115",
  "9"                => ERROR_BASE_URL + "#1030119",
  "10"               => ERROR_BASE_URL + "#1030123",
  "11"               => ERROR_BASE_URL + "#1030127",
  "12"               => ERROR_BASE_URL + "#1030131",
  "13"               => ERROR_BASE_URL + "#1030135",
  "14"               => ERROR_BASE_URL + "#1030139",
  "15"               => ERROR_BASE_URL + "#1030143",
  "16"               => ERROR_BASE_URL + "#1030147",
  "17"               => ERROR_BASE_URL + "#1030151",
  "18"               => ERROR_BASE_URL + "#1030155",
  "19"               => ERROR_BASE_URL + "#1030159",
  "20"               => ERROR_BASE_URL + "#1030163",
  "21"               => ERROR_BASE_URL + "#1033129",
  "100"              => ERROR_BASE_URL + "#1030167",
  "101"              => ERROR_BASE_URL + "#1030171",
  "102"              => ERROR_BASE_URL + "#1030175",
  "103"              => ERROR_BASE_URL + "#1030179",
  "104"              => ERROR_BASE_URL + "#1030183",
  "105"              => ERROR_BASE_URL + "#1030187",
  "106"              => ERROR_BASE_URL + "#1030191",
  "107"              => ERROR_BASE_URL + "#1030195",
  "108"              => ERROR_BASE_URL + "#1030199",
  "109"              => ERROR_BASE_URL + "#1030203",
  "110"              => ERROR_BASE_URL + "#1030207",
  "111"              => ERROR_BASE_URL + "#1030211",
  "112"              => ERROR_BASE_URL + "#1030215",
  "113"              => ERROR_BASE_URL + "#1030219",
  "114"              => ERROR_BASE_URL + "#1030223",
  "115"              => ERROR_BASE_URL + "#1030227",
  "116"              => ERROR_BASE_URL + "#1030231",
  "117"              => ERROR_BASE_URL + "#1030235",
  "118"              => ERROR_BASE_URL + "#1032984",
  "130"              => ERROR_BASE_URL + "#1030239",
  "131"              => ERROR_BASE_URL + "#1030243",
  "200"              => ERROR_BASE_URL + "#1030247",
  "201"              => ERROR_BASE_URL + "#1030251",
  "202"              => ERROR_BASE_URL + "#1030255",
  "203"              => ERROR_BASE_URL + "#1030259",
  "204"              => ERROR_BASE_URL + "#1030263",
  "205"              => ERROR_BASE_URL + "#1030267",
  "206"              => ERROR_BASE_URL + "#1030271",
  "207"              => ERROR_BASE_URL + "#1030275",
  "208"              => ERROR_BASE_URL + "#1030279",
  "209"              => ERROR_BASE_URL + "#1030283",
  "210"              => ERROR_BASE_URL + "#1030287",
  "211"              => ERROR_BASE_URL + "#1030291",
  "212"              => ERROR_BASE_URL + "#1030295",
  "213"              => ERROR_BASE_URL + "#1030299",
  "214"              => ERROR_BASE_URL + "#1030303",
  "215"              => ERROR_BASE_URL + "#1030307",
  "216"              => ERROR_BASE_URL + "#1030311",
  "217"              => ERROR_BASE_URL + "#1030315",
  "218"              => ERROR_BASE_URL + "#1032386",
  "300"              => ERROR_BASE_URL + "#1030319",
  "301"              => ERROR_BASE_URL + "#1030323",
  "302"              => ERROR_BASE_URL + "#1030327",
  "303"              => ERROR_BASE_URL + "#1030331",
  "304"              => ERROR_BASE_URL + "#1030335",
  "306"              => ERROR_BASE_URL + "#1030339",
  "307"              => ERROR_BASE_URL + "#1032406",
  "308"              => ERROR_BASE_URL + "#1032988",
  "400"              => ERROR_BASE_URL + "#1030343",
  "401"              => ERROR_BASE_URL + "#1030347",
  "402"              => ERROR_BASE_URL + "#1030351",
  "403"              => ERROR_BASE_URL + "#1030355",
  "404"              => ERROR_BASE_URL + "#1030359",
  "405"              => ERROR_BASE_URL + "#1030363",
  "406"              => ERROR_BASE_URL + "#1030367",
  "407"              => ERROR_BASE_URL + "#1030371",
  "408"              => ERROR_BASE_URL + "#1030375",
  "409"              => ERROR_BASE_URL + "#1030379",
  "410"              => ERROR_BASE_URL + "#1030383",
  "412"              => ERROR_BASE_URL + "#1030387",
  "413"              => ERROR_BASE_URL + "#1030391",
  "414 "             => ERROR_BASE_URL + "#1030395",
  "415"              => ERROR_BASE_URL + "#1030399",
  "416"              => ERROR_BASE_URL + "#1030403",
  "417"              => ERROR_BASE_URL + "#1030407",
  "418"              => ERROR_BASE_URL + "#1033160",
  "500"              => ERROR_BASE_URL + "#1030411",
  "501"              => ERROR_BASE_URL + "#1030415",
  "502"              => ERROR_BASE_URL + "#1030419",
  "503"              => ERROR_BASE_URL + "#1030423",
  "504"              => ERROR_BASE_URL + "#1030427",
  "505"              => ERROR_BASE_URL + "#1030431",
  "506"              => ERROR_BASE_URL + "#1030435",
  "507"              => ERROR_BASE_URL + "#1030439",
  "508"              => ERROR_BASE_URL + "#1030443",
  "509"              => ERROR_BASE_URL + "#1030447",
  "510"              => ERROR_BASE_URL + "#1030451",
  "511"              => ERROR_BASE_URL + "#1030455",
  "512"              => ERROR_BASE_URL + "#1030459",
  "513"              => ERROR_BASE_URL + "#1033167",
  "600"              => ERROR_BASE_URL + "#1030463",
  "601"              => ERROR_BASE_URL + "#1030467",
  "602"              => ERROR_BASE_URL + "#1030471",
  "603"              => ERROR_BASE_URL + "#1030475",
  "700"              => ERROR_BASE_URL + "#1030479",
  "706"              => ERROR_BASE_URL + "#1030483",
  "707"              => ERROR_BASE_URL + "#1030487",
  "708"              => ERROR_BASE_URL + "#1030491",
  "709"              => ERROR_BASE_URL + "#1030495",
  "710"              => ERROR_BASE_URL + "#1030499",
  "711"              => ERROR_BASE_URL + "#1030503",
  "714"              => ERROR_BASE_URL + "#1030507",
  "715"              => ERROR_BASE_URL + "#1030511",
  "716"              => ERROR_BASE_URL + "#1030515",
  "717"              => ERROR_BASE_URL + "#1030519",
  "718"              => ERROR_BASE_URL + "#1030523",
  "719"              => ERROR_BASE_URL + "#1030527",
  "720"              => ERROR_BASE_URL + "#1030531",
  "721"              => ERROR_BASE_URL + "#1030535",
  "722"              => ERROR_BASE_URL + "#1030539",
  "723"              => ERROR_BASE_URL + "#1030543",
  "724"              => ERROR_BASE_URL + "#1030547",
  "725"              => ERROR_BASE_URL + "#1030551",
  "726"              => ERROR_BASE_URL + "#1030555",
  "727"              => ERROR_BASE_URL + "#1030559",
  "729"              => ERROR_BASE_URL + "#1030563",
  "730"              => ERROR_BASE_URL + "#1030567",
  "731"              => ERROR_BASE_URL + "#1030571",
  "732"              => ERROR_BASE_URL + "#1030575",
  "733"              => ERROR_BASE_URL + "#1030579",
  "734"              => ERROR_BASE_URL + "#1030583",
  "735"              => ERROR_BASE_URL + "#1030587",
  "736"              => ERROR_BASE_URL + "#1030591",
  "737"              => ERROR_BASE_URL + "#1030595",
  "738"              => ERROR_BASE_URL + "#1033174",
  "800"              => ERROR_BASE_URL + "#1030599",
  "801"              => ERROR_BASE_URL + "#1030603",
  "802"              => ERROR_BASE_URL + "#1030607",
  "803"              => ERROR_BASE_URL + "#1030611",
  "804"              => ERROR_BASE_URL + "#1030615",
  "805"              => ERROR_BASE_URL + "#1030619",
  "806"              => ERROR_BASE_URL + "#1030623",
  "807"              => ERROR_BASE_URL + "#1030627",
  "808"              => ERROR_BASE_URL + "#1030631",
  "809"              => ERROR_BASE_URL + "#1030635",
  "810"              => ERROR_BASE_URL + "#1030639",
  "811"              => ERROR_BASE_URL + "#1030643",
  "812"              => ERROR_BASE_URL + "#1033366",
  "813"              => ERROR_BASE_URL + "#1030647",
  "814"              => ERROR_BASE_URL + "#1030651",
  "815"              => ERROR_BASE_URL + "#1030655",
  "816"              => ERROR_BASE_URL + "#1030659",
  "817"              => ERROR_BASE_URL + "#1030663",
  "819"              => ERROR_BASE_URL + "#1030667",
  "820"              => ERROR_BASE_URL + "#1030671",
  "821"              => ERROR_BASE_URL + "#1030675",
  "822"              => ERROR_BASE_URL + "#1030679",
  "823"              => ERROR_BASE_URL + "#1030683",
  "824"              => ERROR_BASE_URL + "#1030687",
  "825"              => ERROR_BASE_URL + "#1030691",
  "826"              => ERROR_BASE_URL + "#1032513",
  "850"              => ERROR_BASE_URL + "#1032541",
  "851"              => ERROR_BASE_URL + "#1032537",
  "852"              => ERROR_BASE_URL + "#1032533",
  "853"              => ERROR_BASE_URL + "#1033181",
  "900"              => ERROR_BASE_URL + "#1030695",
  "901"              => ERROR_BASE_URL + "#1030699",
  "902"              => ERROR_BASE_URL + "#1030703",
  "903"              => ERROR_BASE_URL + "#1030707",
  "905"              => ERROR_BASE_URL + "#1030711",
  "906"              => ERROR_BASE_URL + "#1030715",
  "920"              => ERROR_BASE_URL + "#1030719",
  "921"              => ERROR_BASE_URL + "#1030723",
  "922"              => ERROR_BASE_URL + "#1030727",
  "923"              => ERROR_BASE_URL + "#1030731",
  "951"              => ERROR_BASE_URL + "#1030735",
  "954"              => ERROR_BASE_URL + "#1030739",
  "955"              => ERROR_BASE_URL + "#1030743",
  "956"              => ERROR_BASE_URL + "#1030747",
  "957"              => ERROR_BASE_URL + "#1030751",
  "958"              => ERROR_BASE_URL + "#1030755",
  "959"              => ERROR_BASE_URL + "#1030759",
  "960"              => ERROR_BASE_URL + "#1032612",
  "1200"             => ERROR_BASE_URL + "#1030763",
  "1201"             => ERROR_BASE_URL + "#1030767",
  "1202"             => ERROR_BASE_URL + "#1030771",
  "1203"             => ERROR_BASE_URL + "#1030775",
  "1204"             => ERROR_BASE_URL + "#1030779",
  "1205"             => ERROR_BASE_URL + "#1030783",
  "1206"             => ERROR_BASE_URL + "#1030787",
  "1207"             => ERROR_BASE_URL + "#1030791",
  "1208"             => ERROR_BASE_URL + "#1030795",
  "1209"             => ERROR_BASE_URL + "#1030799",
  "1210"             => ERROR_BASE_URL + "#1030803",
  "1211"             => ERROR_BASE_URL + "#1030807",
  "1212"             => ERROR_BASE_URL + "#1030811",
  "1213"             => ERROR_BASE_URL + "#1030815",
  "1214"             => ERROR_BASE_URL + "#1030819",
  "1215"             => ERROR_BASE_URL + "#1030823",
  "1216"             => ERROR_BASE_URL + "#1030827",
  "1217"             => ERROR_BASE_URL + "#1030831",
  "1218"             => ERROR_BASE_URL + "#1030835",
  "1219"             => ERROR_BASE_URL + "#1030839",
  "1220"             => ERROR_BASE_URL + "#1030843",
  "1221"             => ERROR_BASE_URL + "#1030847",
  "1222"             => ERROR_BASE_URL + "#1030851",
  "1223"             => ERROR_BASE_URL + "#1030855",
  "1224"             => ERROR_BASE_URL + "#1030859",
  "1225"             => ERROR_BASE_URL + "#1030863",
  "1300"             => ERROR_BASE_URL + "#1030867",
  "1301"             => ERROR_BASE_URL + "#1033197",
  "1400"             => ERROR_BASE_URL + "#1030871",
  "1401"             => ERROR_BASE_URL + "#1030875",
  "1402"             => ERROR_BASE_URL + "#1030879",
  "1403"             => ERROR_BASE_URL + "#1030883",
  "1404"             => ERROR_BASE_URL + "#1030887",
  "1405"             => ERROR_BASE_URL + "#1030891",
  "1406"             => ERROR_BASE_URL + "#1030895",
  "1407"             => ERROR_BASE_URL + "#1030899",
  "1408"             => ERROR_BASE_URL + "#1030903",
  "1409"             => ERROR_BASE_URL + "#1030907",
  "1413"             => ERROR_BASE_URL + "#1030911",
  "1414"             => ERROR_BASE_URL + "#1032680",
  "1450"             => ERROR_BASE_URL + "#1030915",
  "1451"             => ERROR_BASE_URL + "#1030919",
  "1501"             => ERROR_BASE_URL + "#1030923",
  "1502"             => ERROR_BASE_URL + "#1030927",
  "1503"             => ERROR_BASE_URL + "#1030931",
  "1504"             => ERROR_BASE_URL + "#1030935",
  "1505"             => ERROR_BASE_URL + "#1030939",
  "1506"             => ERROR_BASE_URL + "#1030943",
  "1507"             => ERROR_BASE_URL + "#1030947",
  "1550"             => ERROR_BASE_URL + "#1032700",
  "1551"             => ERROR_BASE_URL + "#1032696",
  "1626"             => ERROR_BASE_URL + "#1032781",
  "1627"             => ERROR_BASE_URL + "#1032777",
  "1628"             => ERROR_BASE_URL + "#1032773",
  "1629"             => ERROR_BASE_URL + "#1032769",
  "1630"             => ERROR_BASE_URL + "#1032765",
  "1631"             => ERROR_BASE_URL + "#1032761"
}

end