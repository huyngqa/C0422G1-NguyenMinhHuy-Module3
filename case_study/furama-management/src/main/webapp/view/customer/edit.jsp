<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 08/05/22
  Time: 1:31 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="../../resources/css/bootstrap.min.css">
    <link href="https://cdn01.jotfor.ms/static/formCss.css?3.3.34943" rel="stylesheet" type="text/css"/>
    <link type="text/css" rel="stylesheet" href="https://cdn02.jotfor.ms/css/styles/nova.css?3.3.34943"/>
    <link type="text/css" rel="stylesheet"
          href="https://cdn03.jotfor.ms/themes/CSS/55ae259b977cdf17798b4567.css?themeRevisionID=55bab23d977cdfdb338b4567"/>
    <link type="text/css" rel="stylesheet"
          href="https://cdn01.jotfor.ms/css/styles/payment/payment_feature.css?3.3.34943"/>
    <link rel="stylesheet" href="../../resources/css/add-style.css">
</head>
<body class="hasFormUserAvatar">
<%@ include file="../include/header.jsp" %>
<form class="jotform-form" action="" method="post" name="form_222155024937453" id="222155024937453"
      accept-charset="utf-8" autocomplete="on">
    <div role="main" class="form-all">
        <ul class="form-section page-section">
            <li id="cid_293" class="form-input-wide" data-type="control_head">
                <div class="form-header-group header-default"
                     style="background-image: url('../../resources/img/customer.jpg')">
                    <div class="header-text httal htvam">
                        <h2 id="header_293" class="form-header" data-component="header">
                            Edit Customer
                        </h2>
                        <div id="subHeader_293" class="form-subHeader">
                            I will fulfill your request
                        </div>
                    </div>
                </div>
            </li>
            <li class="form-line jf-required" data-type="control_dropdown" id="id_314">
                <label class="form-label form-label-left form-label-auto" id="label_314" for="input_314">
                    Type Customer
                    <span class="form-required">
            *
          </span>
                </label>
                <div id="cid_314" class="form-input jf-required">
                    <select class="form-dropdown validate[required]" id="input_314" name="q314_type_customer"
                            style="width:150px" data-component="dropdown" required="">
                        <option value=""> Diamond</option>
                        <option value=""> Platinium</option>
                        <option value=""> Gold</option>
                    </select>
                </div>
            </li>
            <li class="form-line jf-required" data-type="control_email" id="id_324">
                <label class="form-label form-label-left form-label-auto" id="label_324" for="input_324">
                    Name
                    <span class="form-required">
            *
          </span>
                </label>
                <div id="cid_324" class="form-input jf-required">
          <span class="form-sub-label-container" style="vertical-align:top">
            <input type="text" id="input_324" name="q324_name" class="form-textbox validate[required, day-name-cell]"
                   data-defaultvalue="" size="50" value="" data-component="name"
                   aria-labelledby="label_324 sublabel_input_324" required=""/>
            <label class="form-sub-label" for="input_324" id="sublabel_input_324" style="min-height:13px"
                   aria-hidden="false"> Full name </label>
          </span>
                </div>
            </li>
            <li class="form-line jf-required" data-type="control_birthdate" id="id_7">
                <label class="form-label form-label-left form-label-auto" id="label_7" for="input_7_day">
                    Birth Date
                    <span class="form-required">
            *
          </span>
                </label>
                <div id="cid_7" class="form-input jf-required">
                    <div data-wrapper-react="true">
            <span class="form-sub-label-container" style="vertical-align:top">
              <select name="q7_birthDate7[day]" id="input_7_day" class="form-dropdown validate[required]"
                      data-component="birthdate-day" aria-labelledby="label_7 sublabel_7_day">
                <option>  </option>
                <option value="1"> 1 </option>
                <option value="2"> 2 </option>
                <option value="3"> 3 </option>
                <option value="4"> 4 </option>
                <option value="5"> 5 </option>
                <option value="6"> 6 </option>
                <option value="7"> 7 </option>
                <option value="8"> 8 </option>
                <option value="9"> 9 </option>
                <option value="10"> 10 </option>
                <option value="11"> 11 </option>
                <option value="12"> 12 </option>
                <option value="13"> 13 </option>
                <option value="14"> 14 </option>
                <option value="15"> 15 </option>
                <option value="16"> 16 </option>
                <option value="17"> 17 </option>
                <option value="18"> 18 </option>
                <option value="19"> 19 </option>
                <option value="20"> 20 </option>
                <option value="21"> 21 </option>
                <option value="22"> 22 </option>
                <option value="23"> 23 </option>
                <option value="24"> 24 </option>
                <option value="25"> 25 </option>
                <option value="26"> 26 </option>
                <option value="27"> 27 </option>
                <option value="28"> 28 </option>
                <option value="29"> 29 </option>
                <option value="30"> 30 </option>
                <option value="31"> 31 </option>
              </select>
              <label class="form-sub-label" for="input_7_day" id="sublabel_7_day" style="min-height:13px"
                     aria-hidden="false"> Day </label>
            </span>
                        <span class="form-sub-label-container" style="vertical-align:top">
              <select name="q7_birthDate7[month]" id="input_7_month" class="form-dropdown validate[required]"
                      data-component="birthdate-month" aria-labelledby="label_7 sublabel_7_month">
                <option>  </option>
                <option value="January"> January </option>
                <option value="February"> February </option>
                <option value="March"> March </option>
                <option value="April"> April </option>
                <option value="May"> May </option>
                <option value="June"> June </option>
                <option value="July"> July </option>
                <option value="August"> August </option>
                <option value="September"> September </option>
                <option value="October"> October </option>
                <option value="November"> November </option>
                <option value="December"> December </option>
              </select>
              <label class="form-sub-label" for="input_7_month" id="sublabel_7_month" style="min-height:13px"
                     aria-hidden="false"> Month </label>
            </span>
                        <span class="form-sub-label-container" style="vertical-align:top">
              <select name="q7_birthDate7[year]" id="input_7_year" class="form-dropdown validate[required]"
                      data-component="birthdate-year" aria-labelledby="label_7 sublabel_7_year">
                <option>  </option>
                <option value="2022"> 2022 </option>
                <option value="2021"> 2021 </option>
                <option value="2020"> 2020 </option>
                <option value="2019"> 2019 </option>
                <option value="2018"> 2018 </option>
                <option value="2017"> 2017 </option>
                <option value="2016"> 2016 </option>
                <option value="2015"> 2015 </option>
                <option value="2014"> 2014 </option>
                <option value="2013"> 2013 </option>
                <option value="2012"> 2012 </option>
                <option value="2011"> 2011 </option>
                <option value="2010"> 2010 </option>
                <option value="2009"> 2009 </option>
                <option value="2008"> 2008 </option>
                <option value="2007"> 2007 </option>
                <option value="2006"> 2006 </option>
                <option value="2005"> 2005 </option>
                <option value="2004"> 2004 </option>
                <option value="2003"> 2003 </option>
                <option value="2002"> 2002 </option>
                <option value="2001"> 2001 </option>
                <option value="2000"> 2000 </option>
                <option value="1999"> 1999 </option>
                <option value="1998"> 1998 </option>
                <option value="1997"> 1997 </option>
                <option value="1996"> 1996 </option>
                <option value="1995"> 1995 </option>
                <option value="1994"> 1994 </option>
                <option value="1993"> 1993 </option>
                <option value="1992"> 1992 </option>
                <option value="1991"> 1991 </option>
                <option value="1990"> 1990 </option>
                <option value="1989"> 1989 </option>
                <option value="1988"> 1988 </option>
                <option value="1987"> 1987 </option>
                <option value="1986"> 1986 </option>
                <option value="1985"> 1985 </option>
                <option value="1984"> 1984 </option>
                <option value="1983"> 1983 </option>
                <option value="1982"> 1982 </option>
                <option value="1981"> 1981 </option>
                <option value="1980"> 1980 </option>
                <option value="1979"> 1979 </option>
                <option value="1978"> 1978 </option>
                <option value="1977"> 1977 </option>
                <option value="1976"> 1976 </option>
                <option value="1975"> 1975 </option>
                <option value="1974"> 1974 </option>
                <option value="1973"> 1973 </option>
                <option value="1972"> 1972 </option>
                <option value="1971"> 1971 </option>
                <option value="1970"> 1970 </option>
                <option value="1969"> 1969 </option>
                <option value="1968"> 1968 </option>
                <option value="1967"> 1967 </option>
                <option value="1966"> 1966 </option>
                <option value="1965"> 1965 </option>
                <option value="1964"> 1964 </option>
                <option value="1963"> 1963 </option>
                <option value="1962"> 1962 </option>
                <option value="1961"> 1961 </option>
                <option value="1960"> 1960 </option>
                <option value="1959"> 1959 </option>
                <option value="1958"> 1958 </option>
                <option value="1957"> 1957 </option>
                <option value="1956"> 1956 </option>
                <option value="1955"> 1955 </option>
                <option value="1954"> 1954 </option>
                <option value="1953"> 1953 </option>
                <option value="1952"> 1952 </option>
                <option value="1951"> 1951 </option>
                <option value="1950"> 1950 </option>
                <option value="1949"> 1949 </option>
                <option value="1948"> 1948 </option>
                <option value="1947"> 1947 </option>
                <option value="1946"> 1946 </option>
                <option value="1945"> 1945 </option>
                <option value="1944"> 1944 </option>
                <option value="1943"> 1943 </option>
                <option value="1942"> 1942 </option>
                <option value="1941"> 1941 </option>
                <option value="1940"> 1940 </option>
                <option value="1939"> 1939 </option>
                <option value="1938"> 1938 </option>
                <option value="1937"> 1937 </option>
                <option value="1936"> 1936 </option>
                <option value="1935"> 1935 </option>
                <option value="1934"> 1934 </option>
                <option value="1933"> 1933 </option>
                <option value="1932"> 1932 </option>
                <option value="1931"> 1931 </option>
                <option value="1930"> 1930 </option>
                <option value="1929"> 1929 </option>
                <option value="1928"> 1928 </option>
                <option value="1927"> 1927 </option>
                <option value="1926"> 1926 </option>
                <option value="1925"> 1925 </option>
                <option value="1924"> 1924 </option>
                <option value="1923"> 1923 </option>
                <option value="1922"> 1922 </option>
                <option value="1921"> 1921 </option>
                <option value="1920"> 1920 </option>
              </select>
              <label class="form-sub-label" for="input_7_year" id="sublabel_7_year" style="min-height:13px"
                     aria-hidden="false"> Year </label>
            </span>
                    </div>
                </div>
            </li>
            <li class="form-line jf-required" data-type="control_radio" id="id_313">
                <label class="form-label form-label-left form-label-auto" id="label_313" for="input_313_0">
                    Gender
                    <span class="form-required">
            *
          </span>
                </label>
                <div id="cid_313" class="form-input jf-required">
                    <div class="form-single-column" role="group" aria-labelledby="label_313" data-component="radio">
            <span class="form-radio-item" style="clear:left">
              <span class="dragger-item">
              </span>
              <input type="radio" aria-describedby="label_313" class="form-radio validate[required]" id="input_313_0"
                     name="q313_gender" value="Type option 1" required=""/>
              <label id="label_input_313_0" for="input_313_0"> Nam </label>
            </span>
                        <span class="form-radio-item" style="clear:left">
              <span class="dragger-item">
              </span>
              <input type="radio" aria-describedby="label_313" class="form-radio validate[required]" id="input_313_1"
                     name="q313_gender" value="Type option 2" required=""/>
              <label id="label_input_313_1" for="input_313_1"> Nữ </label>
            </span>
                    </div>
                </div>
            </li>
            <li class="form-line jf-required" data-type="control_phone" id="id_311">
                <label class="form-label form-label-left form-label-auto" id="label_311" for="input_311_full">
                    ID Card
                    <span class="form-required">
            *
          </span>
                </label>
                <div id="cid_311" class="form-input jf-required">
          <span class="form-sub-label-container" style="vertical-align:top">
            <input type="text" id="input_311_full" name="q311_idCard[full]" data-type="mask-number"
                   class="mask-phone-number form-textbox validate[required, Fill Mask]" data-defaultvalue=""
                   autoComplete="section-input_311 on" data-masked="true" value="" data-component="phone"
                   aria-labelledby="label_311" required=""/>
            <label class="form-sub-label" for="input_311_full" id="sublabel_311_masked" style="min-height:13px"
                   aria-hidden="false">  </label>
          </span>
                </div>
            </li>
            <li class="form-line jf-required" data-type="control_phone" id="id_6">
                <label class="form-label form-label-left form-label-auto" id="label_6" for="input_6_full">
                    Phone Number:
                    <span class="form-required">
            *
          </span>
                </label>
                <div id="cid_6" class="form-input jf-required">
          <span class="form-sub-label-container" style="vertical-align:top">
            <input type="tel" id="input_6_full" name="q6_phoneNumber6[full]" data-type="mask-number"
                   class="mask-phone-number form-textbox validate[required, Fill Mask]" data-defaultvalue=""
                   autoComplete="section-input_6 tel-national" data-masked="true" value="" data-component="phone"
                   aria-labelledby="label_6" required=""/>
            <label class="form-sub-label" for="input_6_full" id="sublabel_6_masked" style="min-height:13px"
                   aria-hidden="false">  </label>
          </span>
                </div>
            </li>
            <li class="form-line" data-type="control_email" id="id_5">
                <label class="form-label form-label-left form-label-auto" id="label_5" for="input_5"> E-mail
                    Address: </label>
                <div id="cid_5" class="form-input">
                    <input type="email" id="input_5" name="q5_emailAddress5" class="form-textbox validate[Email]"
                           data-defaultvalue="" size="30" value="" placeholder="ex: myname@example.com"
                           data-component="email" aria-labelledby="label_5"/>
                </div>
            </li>
            <li class="form-line jf-required" data-type="control_address" id="id_4">
                <label class="form-label form-label-left form-label-auto" id="label_4" for="input_4_addr_line1">
                    Address:
                    <span class="form-required">
            *
          </span>
                </label>
                <div id="cid_4" class="form-input jf-required">
                    <div summary="" class="form-address-table jsTest-addressField">
                        <div class="form-address-line-wrapper jsTest-address-line-wrapperField">
              <span class="form-address-line form-address-street-line jsTest-address-lineField">
                <span class="form-sub-label-container" style="vertical-align:top">
                  <input type="text" id="input_4_addr_line1" name="q4_address4[addr_line1]"
                         class="form-textbox validate[required] form-address-line" data-defaultvalue=""
                         autoComplete="section-input_4 address-line1" value="" data-component="address_line_1"
                         aria-labelledby="label_4 sublabel_4_addr_line1" required=""/>
                  <label class="form-sub-label" for="input_4_addr_line1" id="sublabel_4_addr_line1"
                         style="min-height:13px" aria-hidden="false"> Street Address </label>
                </span>
              </span>
                        </div>
                    </div>
                </div>
            </li>
            <li class="form-line" data-type="control_button" id="id_2">
                <div id="cid_2" class="form-input-wide">
                    <div style="text-align:center" data-align="center"
                         class="form-buttons-wrapper form-buttons-center   jsTest-button-wrapperField">
                        <button id="input_2" type="submit"
                                class="form-submit-button submit-button jf-form-buttons jsTest-submitField"
                                data-component="button" data-content="">
                            Submit Application
                        </button>
                    </div>
                </div>
            </li>
        </ul>
    </div>
</form>
<%@ include file="../include/footer.jsp" %>
<script src="../../resources/js/bootstrap.min.js"></script>
</body>
</html>
