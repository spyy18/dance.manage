package at.danceandfun.entity;

import java.math.BigDecimal;
import java.math.RoundingMode;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;

import org.hibernate.annotations.Type;
import org.joda.time.LocalDateTime;

@Entity
@Table(name = "INVOICE")
public class Invoice extends EntityBase {

    /**
     * 
     */
    private static final long serialVersionUID = 1L;

    @Id
    @Column(name = "I_ID")
    @GeneratedValue
    private Integer iid;

    @Column(name = "DATETIME")
    @Type(type = "org.jadira.usertype.dateandtime.joda.PersistentLocalDateTime")
    private LocalDateTime invoiceDateTime;

    @Column(name = "ENABLED")
    private boolean enabled;

    @ManyToOne
    @JoinColumn(name = "PARENT_ID")
    private Parent parent;

    @ManyToOne
    @JoinColumn(name = "P_ID")
    private Participant participant;

    @OneToMany(mappedBy = "key.invoice", cascade = CascadeType.ALL)
    private List<Position> positions = new ArrayList<Position>();

    @Column(name = "REDUCTION")
    @Min(value = 0, message = "{min.invoice.reduction}")
    @Max(value = 100, message = "{max.invoice.reduction}")
    private Double reduction;

    @Column(name = "REDUCTION_AMOUNT")
    private Double reductionAmount;

    @Column(name = "TOTAL_AMOUNT")
    private Double totalAmount;

    @Column(name = "VAT_AMOUNT")
    private Double vatAmount;

    public Invoice() {
    }

    public Integer getIid() {
        return iid;
    }

    public void setIid(Integer iid) {
        this.iid = iid;
    }

    public LocalDateTime getDate() {
        return invoiceDateTime;
    }

    public void setDate(LocalDateTime date) {
        this.invoiceDateTime = date;
    }

    public boolean isEnabled() {
        return enabled;
    }

    public void setEnabled(boolean enabled) {
        this.enabled = enabled;
    }

    public Parent getParent() {
        return parent;
    }

    public void setParent(Parent parent) {
        this.parent = parent;
    }

    public Participant getParticipant() {
        return participant;
    }

    public void setParticipant(Participant participant) {
        this.participant = participant;
    }

    public List<Position> getPositions() {
        return positions;
    }

    public void setPositions(List<Position> positions) {
        this.positions = positions;
    }

    public Double getReduction() {
        return reduction;
    }

    public void setReduction(Double reduction) {
        this.reduction = reduction;
    }

    public Double getTotalAmount() {
        return totalAmount;
    }

    public Double getReductionAmount() {
        return reductionAmount;
    }

    public void setReductionAmount(Double reductionAmount) {
        this.reductionAmount = reductionAmount;
    }

    public void setTotalAmount(Double totalAmount) {
        this.totalAmount = totalAmount;
        this.vatAmount = totalAmount * 0.166667;
        BigDecimal bd = new BigDecimal(this.vatAmount).setScale(2,
                RoundingMode.HALF_EVEN);
        this.vatAmount = bd.doubleValue();
    }

    public Double getVatAmount() {
        return vatAmount;
    }

    public void setVatAmount(Double vatAmount) {
        this.vatAmount = vatAmount;
    }

}
