package actions.views;

import java.time.LocalDate;
import java.time.LocalDateTime;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

/**
 * 掲示板情報について画面の入力値・出力値を扱うViewモデル
 *
 */
@Getter //全てのクラスフィールドについてgetterを自動生成する(Lombok)
@Setter //全てのクラスフィールドについてsetterを自動生成する(Lombok)
@NoArgsConstructor //引数なしコンストラクタを自動生成する(Lombok)
@AllArgsConstructor //全てのクラスフィールドを引数にもつ引数ありコンストラクタを自動生成する(Lombok)
public class ReportView {

    /**
     * id
     */
    private Integer id;

    /**
     * 掲示板を登録した従業員
     */
    private EmployeeView employee;

    /**
     * いつの掲示板かを示す日付
     */
    private LocalDate reportDate;

    /**
     * 掲示板のタイトル
     */
    private String title;

    /**
     * 掲示板の内容
     */
    private String content;

    /**
     * 掲示板の掲載部署
     */
    private String department;

    /**
     * 登録日時
     */
    private LocalDateTime createdAt;

    /**
     * 更新日時
     */
    private LocalDateTime updatedAt;

    /**
     * 削除フラグ
     */
    private Integer deleteflag;

}