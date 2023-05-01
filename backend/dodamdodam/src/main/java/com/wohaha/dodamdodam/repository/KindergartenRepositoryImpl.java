package com.wohaha.dodamdodam.repository;

import com.querydsl.jpa.impl.JPAQueryFactory;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.Optional;

import static com.wohaha.dodamdodam.domain.QKindergarten.kindergarten;

public class KindergartenRepositoryImpl implements KindergartenRepositoryCustom {
    @Autowired
    private JPAQueryFactory query;

    @Override
    public Optional<Long> findKindergartenSeqByUserSeq(Long userSeq) {

        return Optional.ofNullable(
            query
                    .select(kindergarten.kindergartenSeq)
                    .from(kindergarten)
                    .where(kindergarten.userSeq.eq(userSeq))
                    .fetchOne()
        );
    }
}
