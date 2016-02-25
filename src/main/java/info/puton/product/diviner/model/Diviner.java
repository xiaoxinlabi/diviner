package info.puton.product.diviner.model;

import java.math.BigDecimal;

public class Diviner {
    private String billId;

    private BigDecimal totalValue;

    private String overRate;

    private BigDecimal blackValue;

    private String blackContent1;

    private String blackContent2;

    private Integer personalValue;

    private String personalContent1;

    private String personalContent2;

    private String personalContent3;

    private Integer additionValue;

    private String additionContent1;

    private String additionContent2;

    private String additionContent3;

    public Diviner(String billId, BigDecimal totalValue, String overRate, BigDecimal blackValue, String blackContent1, String blackContent2, Integer personalValue, String personalContent1, String personalContent2, String personalContent3, Integer additionValue, String additionContent1, String additionContent2, String additionContent3) {
        this.billId = billId;
        this.totalValue = totalValue;
        this.overRate = overRate;
        this.blackValue = blackValue;
        this.blackContent1 = blackContent1;
        this.blackContent2 = blackContent2;
        this.personalValue = personalValue;
        this.personalContent1 = personalContent1;
        this.personalContent2 = personalContent2;
        this.personalContent3 = personalContent3;
        this.additionValue = additionValue;
        this.additionContent1 = additionContent1;
        this.additionContent2 = additionContent2;
        this.additionContent3 = additionContent3;
    }

    public Diviner() {
        super();
    }

    public String getBillId() {
        return billId;
    }

    public void setBillId(String billId) {
        this.billId = billId == null ? null : billId.trim();
    }

    public BigDecimal getTotalValue() {
        return totalValue;
    }

    public void setTotalValue(BigDecimal totalValue) {
        this.totalValue = totalValue;
    }

    public String getOverRate() {
        return overRate;
    }

    public void setOverRate(String overRate) {
        this.overRate = overRate == null ? null : overRate.trim();
    }

    public BigDecimal getBlackValue() {
        return blackValue;
    }

    public void setBlackValue(BigDecimal blackValue) {
        this.blackValue = blackValue;
    }

    public String getBlackContent1() {
        return blackContent1;
    }

    public void setBlackContent1(String blackContent1) {
        this.blackContent1 = blackContent1 == null ? null : blackContent1.trim();
    }

    public String getBlackContent2() {
        return blackContent2;
    }

    public void setBlackContent2(String blackContent2) {
        this.blackContent2 = blackContent2 == null ? null : blackContent2.trim();
    }

    public Integer getPersonalValue() {
        return personalValue;
    }

    public void setPersonalValue(Integer personalValue) {
        this.personalValue = personalValue;
    }

    public String getPersonalContent1() {
        return personalContent1;
    }

    public void setPersonalContent1(String personalContent1) {
        this.personalContent1 = personalContent1 == null ? null : personalContent1.trim();
    }

    public String getPersonalContent2() {
        return personalContent2;
    }

    public void setPersonalContent2(String personalContent2) {
        this.personalContent2 = personalContent2 == null ? null : personalContent2.trim();
    }

    public String getPersonalContent3() {
        return personalContent3;
    }

    public void setPersonalContent3(String personalContent3) {
        this.personalContent3 = personalContent3 == null ? null : personalContent3.trim();
    }

    public Integer getAdditionValue() {
        return additionValue;
    }

    public void setAdditionValue(Integer additionValue) {
        this.additionValue = additionValue;
    }

    public String getAdditionContent1() {
        return additionContent1;
    }

    public void setAdditionContent1(String additionContent1) {
        this.additionContent1 = additionContent1 == null ? null : additionContent1.trim();
    }

    public String getAdditionContent2() {
        return additionContent2;
    }

    public void setAdditionContent2(String additionContent2) {
        this.additionContent2 = additionContent2 == null ? null : additionContent2.trim();
    }

    public String getAdditionContent3() {
        return additionContent3;
    }

    public void setAdditionContent3(String additionContent3) {
        this.additionContent3 = additionContent3 == null ? null : additionContent3.trim();
    }
}