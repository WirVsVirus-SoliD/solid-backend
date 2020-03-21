package de.mlbw.ethbalance.backend.dao.repository;

import java.util.Date;

import javax.persistence.PrePersist;
import javax.persistence.PreUpdate;

import org.springframework.util.StringUtils;

import de.mlbw.ethbalance.backend.dao.AbstractEntity;

public class PrePersistListener
{
    @PrePersist
    public void setCreatedFields( AbstractEntity e )
    {
        e.setT_dateCreated( new Date() );
        if ( !StringUtils.hasText( e.getT_userCreated() ) )
        {
            e.setT_userCreated( AbstractEntity.SYSTEM_USER );
        }
        setUpdateFields( e );
    }

    @PreUpdate
    public void setUpdateFields( AbstractEntity e )
    {
        e.setT_dateChanged( new Date() );
        if ( !StringUtils.hasText( e.getT_userChanged() ) )
        {
            e.setT_userChanged( AbstractEntity.SYSTEM_USER );
        }
    }
}
