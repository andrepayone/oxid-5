<dl>
    <dt>
        <input id="payment_[{$sPaymentID}]" type="radio" name="paymentid" value="[{$sPaymentID}]" [{if $oView->getCheckedPaymentId() == $paymentmethod->oxpayments__oxid->value}]checked[{/if}]>
        <label for="payment_[{$sPaymentID}]"><b>[{oxmultilang ident=$paymentmethod->oxpayments__oxdesc->value}]</b> [{$oView->fcpoGetFormattedPaymentCosts($paymentmethod)}]</label>
    </dt>
    <dd class="[{if $oView->getCheckedPaymentId() == $paymentmethod->oxpayments__oxid->value}]activePayment[{/if}]">
        [{if $oView->fcpoGetTrustlyShowIban()}]
        <div class="form-group" id="fcpo_trustly_iban">
            <label class="req control-label col-lg-3">[{oxmultilang ident="FCPO_BANK_IBAN"}]</label>
            <div class="col-lg-9">
                <input placeholder="IBAN" class="form-control" autocomplete="off" type="text" size="20" maxlength="64" name="dynvalue[fcpo_trustly_iban]" value="[{$dynvalue.fcpo_trustly_iban}]">
                <div id="fcpo_trustly_iban_invalid" class="fcpo_check_error">
                        <span class="help-block ">
                            <ul role="alert" class="list-unstyled text-danger">
                                <li>[{oxmultilang ident="FCPO_IBAN_INVALID"}]</li>
                            </ul>
                        </span>
                </div>
            </div>
        </div>
        <div class="form-group" id="fcpo_trustly_bic">
            <label class="req control-label col-lg-3">[{oxmultilang ident="FCPO_BANK_BIC"}]</label>
            <div class="col-lg-9">
                <input placeholder="BIC" class="form-control" autocomplete="off" type="text" size="20" maxlength="64" name="dynvalue[fcpo_trustly_bic]" value="[{$dynvalue.fcpo_trustly_bic}]">
                <div id="fcpo_trustly_bic_invalid" class="fcpo_check_error">
                        <span class="help-block ">
                            <ul role="alert" class="list-unstyled text-danger">
                                <li>[{oxmultilang ident="FCPO_BIC_INVALID"}]</li>
                            </ul>
                        </span>
                </div>
            </div>
        </div>
        [{/if}]
        <div class="clearfix"></div>

        [{block name="checkout_payment_longdesc"}]
        [{if $paymentmethod->oxpayments__oxlongdesc->value|strip_tags|trim}]
        <div class="alert alert-info col-lg-offset-3 desc">
            [{$paymentmethod->oxpayments__oxlongdesc->getRawValue()}]
        </div>
        [{/if}]
        [{/block}]
    </dd>
</dl>
