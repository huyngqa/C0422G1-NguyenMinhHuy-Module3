<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 08/05/22
  Time: 11:17 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Furama</title>
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
<c:if test="${message != null}">
    <p>${message}</p>
</c:if>
<form class="jotform-form" method="post" name="form_222155024937453" id="222155024937453"
      accept-charset="utf-8" autocomplete="on">
    <div role="main" class="form-all">
        <ul class="form-section page-section">
            <li id="cid_293" class="form-input-wide" data-type="control_head">
                <div class="form-header-group header-default"
                     style="background-image: url('../../resources/img/customer.jpg')">
                    <div class="header-text httal htvam">
                        <h2 id="header_293" class="form-header" data-component="header">
                            Add Customer
                        </h2>
                        <div id="subHeader_293" class="form-subHeader">
                            Wish you have a lot of fun
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
                    <select class="form-dropdown validate[required]" id="input_314" name="type_customer"
                            style="width:150px" data-component="dropdown" required="">
                        <c:forEach var="typeCustomer" items="${typeCustomerList}">
                            <option value="${typeCustomer.typeCustomerId}">${typeCustomer.typeCustomerName}</option>
                        </c:forEach>
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
            <input type="text" id="input_324" name="name" class="form-textbox validate[required, day-name-cell]"
                   data-defaultvalue="" size="50" value="" data-component="name"
                   aria-labelledby="label_324 sublabel_input_324" required=""/>
            <label class="form-sub-label" for="input_324" id="sublabel_input_324" style="min-height:13px"
                   aria-hidden="false"> Full name </label>
              <span class="text-danger">${nameErr}</span>
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
            <input type="date" id="input_7_day" name="birth_day" data-type="mask-number"
                   class="mask-phone-number form-textbox validate[required, Fill Mask]" data-defaultvalue=""
                   autoComplete="section-input_311 on" data-masked="true" value="" data-component="phone"
                   aria-labelledby="label_311" required=""/>
            <label class="form-sub-label" for="input_7_day" id="sub_lable_7_day" style="min-height:13px"
                   aria-hidden="false">  </label>
                            <span class="text-danger">${dayOfBirthErr}</span>
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
                     name="gender" value="true" required=""/>
              <label id="label_input_313_0" for="input_313_0"> Nam </label>
            </span>
                        <span class="form-radio-item" style="clear:left">
              <span class="dragger-item">
              </span>
              <input type="radio" aria-describedby="label_313" class="form-radio validate[required]" id="input_313_1"
                     name="gender" value="false" required=""/>
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
            <input type="text" id="input_311_full" name="id_card" data-type="mask-number"
                   class="mask-phone-number form-textbox validate[required, Fill Mask]" data-defaultvalue=""
                   autoComplete="section-input_311 on" data-masked="true" value="" data-component="phone"
                   aria-labelledby="label_311" required=""/>
            <label class="form-sub-label" for="input_311_full" id="sublabel_311_masked" style="min-height:13px"
                   aria-hidden="false">  </label>
              <span class="text-danger">${idCardErr}</span>
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
            <input type="tel" id="input_6_full" name="tel" data-type="mask-number"
                   class="mask-phone-number form-textbox validate[required, Fill Mask]" data-defaultvalue=""
                   autoComplete="section-input_6 tel-national" data-masked="true" value="" data-component="phone"
                   aria-labelledby="label_6" required=""/>
            <label class="form-sub-label" for="input_6_full" id="sublabel_6_masked" style="min-height:13px"
                   aria-hidden="false">  </label>
              <span class="text-danger">${telErr}</span>
          </span>
                </div>
            </li>
            <li class="form-line" data-type="control_email" id="id_5">
                <label class="form-label form-label-left form-label-auto" id="label_5" for="input_5"> E-mail
                    Address: </label>
                <div id="cid_5" class="form-input">
                    <input type="email" id="input_5" name="email" class="form-textbox validate[Email]"
                           data-defaultvalue="" size="30" value="" placeholder="ex: myname@example.com"
                           data-component="email" aria-labelledby="label_5"/>
                </div>
                <span class="text-danger">${emailRegex}</span>
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
                  <input type="text" id="input_4_addr_line1" name="address"
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
